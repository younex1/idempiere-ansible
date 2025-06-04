#!/usr/bin/env python3
import os
import time
import json
import requests
import psycopg2
from decimal import Decimal
from datetime import datetime, date

# ─── Configuration ─────────────────────────────────────────────────────────────
DB_NAME     = os.getenv("PGDATABASE", "idempiere")
DB_USER     = os.getenv("PGUSER", "adempiere")
DB_PASSWORD = os.getenv("PGPASSWORD", "MyWeak_Pa55w0rd")
DB_HOST     = os.getenv("PGHOST", "127.0.0.1")
DB_PORT     = int(os.getenv("PGPORT", "5432"))
ES_URL      = os.getenv("ES_URL", "http://127.0.0.1:9200")
POLL_INTERVAL = int(os.getenv("POLL_INTERVAL", "10"))

# ─── Connect to PostgreSQL ────────────────────────────────────────────────────
conn = psycopg2.connect(
    dbname=DB_NAME,
    user=DB_USER,
    password=DB_PASSWORD,
    host=DB_HOST,
    port=DB_PORT
)
cur = conn.cursor()

# ─── Helper: JSON serializer ────────────────────────────────────────────────────
def custom_converter(o):
    if isinstance(o, Decimal):
        return float(o)
    if isinstance(o, (datetime, date)):
        return o.isoformat()
    raise TypeError(f"Not JSON serializable: {type(o)}")

# ─── Fields to index per table ─────────────────────────────────────────────────
field_map = {
    "m_product": [
        "m_product_id","ad_client_id","ad_org_id","isactive","created","createdby",
        "updated","updatedby","product_value","sku","upc","mpn","asin","product_name",
        "pricelist_version_id","pricelist_version_name","product_price",
        "warehouse_id","warehouse_name"
    ],
    "c_bpartner": [
        "c_bpartner_id","ad_client_id","ad_org_id","isactive","created","createdby",
        "updated","updatedby","value","name","name2","description","isonetime",
        "isprospect","isvendor","iscustomer","isemployee","address1","address2","city","postal"
    ],
    "m_inout": [
        "m_inout_id","ad_client_id","ad_org_id","isactive","issotrx","documentno",
        "docstatus","description","c_order_id","movementtype","c_bpartner_id","trackingno"
    ],
    "c_order": [
        "c_order_id","ad_client_id","ad_org_id","isactive","issotrx","documentno",
        "docstatus","shopware6_order_id","shopify_order_id","xentral_order_id","externalorderid"
    ],
    "r_request": [
        "r_request_id","ad_client_id","ad_org_id","isactive","documentno","r_requesttype_id",
        "r_group_id","r_category_id","r_status_id","r_resolution_id","r_requestrelated_id",
        "priority","priorityuser","duetype","summary","confidentialtype","isescalated",
        "isselfservice","salesrep_id","ad_role_id","datelastaction","datelastalert",
        "lastresult","processed","isinvoiced","c_bpartner_id","ad_user_id","c_campaign_id",
        "c_order_id","c_invoice_id","c_payment_id","m_product_id","c_project_id","a_asset_id",
        "m_inout_id","m_rma_id"
    ],
    "c_invoice": [
        "c_invoice_id","ad_client_id","ad_org_id","isactive","created","createdby",
        "updated","updatedby","issotrx","documentno","docstatus","docaction","processing",
        "processed","posted","c_doctype_id","c_doctypetarget_id","c_order_id","description"
    ],
    "ad_user": [
        "ad_user_id","ad_client_id","ad_org_id","isactive","name","email","c_bpartner_id",
        "phone","issaleslead","isvendorlead","issystemuser"
    ]
}

# ─── Enrichment logic (denormalization) ────────────────────────────────────────
def enrich_with_joins(table, doc):
    try:
        # c_bpartner.value → bvalue
        if "c_bpartner_id" in doc and doc["c_bpartner_id"] is not None:
            cur.execute("SELECT value FROM c_bpartner WHERE c_bpartner_id = %s", (doc["c_bpartner_id"],))
            r = cur.fetchone()
            if r: doc["bvalue"] = r[0]

        # ad_org.name → adorgname
        if "ad_org_id" in doc and doc["ad_org_id"] is not None:
            cur.execute("SELECT name FROM ad_org WHERE ad_org_id = %s", (doc["ad_org_id"],))
            r = cur.fetchone()
            if r: doc["adorgname"] = r[0]

        # c_doctype.name → doctypename / doctypetargetname
        for key, alias in [("c_doctype_id","doctypename"), ("c_doctypetarget_id","doctypetargetname")]:
            if key in doc and doc[key] is not None:
                cur.execute("SELECT name FROM c_doctype WHERE c_doctype_id = %s", (doc[key],))
                r = cur.fetchone()
                if r: doc[alias] = r[0]

        # Address fields for c_bpartner
        if table == "c_bpartner":
            cur.execute("""SELECT l.address1, l.address2, l.city, l.postal
                            FROM c_bpartner_location bl
                            JOIN c_location l ON l.c_location_id = bl.c_location_id
                            WHERE bl.c_bpartner_id = %s
                            LIMIT 1""", (doc["c_bpartner_id"],))
            r = cur.fetchone()
            if r:
                doc.update(dict(zip(["address1","address2","city","postal"], r)))

        # r_request references
        if table == "r_request":
            refs = {
                "c_order_id": ("c_order","documentno","order_documentno"),
                "c_invoice_id": ("c_invoice","documentno","invoice_documentno"),
                "c_payment_id": ("c_payment","documentno","payment_documentno"),
                "c_project_id": ("c_project","value","project_value"),
                "a_asset_id": ("a_asset","value","asset_value"),
                "m_inout_id": ("m_inout","documentno","inout_documentno"),
                "m_rma_id": ("m_rma","documentno","rma_documentno")
            }
            for key, (tbl, col, alias) in refs.items():
                if key in doc and doc[key] is not None:
                    cur.execute(f"SELECT {col} FROM {tbl} WHERE {tbl}_id = %s", (doc[key],))
                    rr = cur.fetchone()
                    if rr: doc[alias] = rr[0]

    except Exception as e:
        print(f"[Enrichment error on {table}] {e}")
    return doc

# ─── Bootstrap existing data once ──────────────────────────────────────────────
def bootstrap_initial_data():
    try:
        print("🔄 Starting bootstrap of existing records...")
        for table in field_map:
            print(f"  • Bootstrapping {table} …")
            pk = f"{table}_id"
            cur.execute(f"SELECT {pk} FROM {table}")
            rows = cur.fetchall()
            for (rid,) in rows:
                cur.execute(
                    "INSERT INTO es_sync_queue(table_name, record_id, operation) VALUES (%s, %s, 'insert') ON CONFLICT DO NOTHING",
                    (table, rid)
                )
            conn.commit()
        print("✅ Bootstrap complete.")
    except Exception as e:
        print(f"❌ Bootstrap error: {e}")

# ─── Process the sync queue ───────────────────────────────────────────────────
def process_queue():
    cur.execute("SELECT id, table_name, record_id, operation FROM es_sync_queue WHERE processed = false ORDER BY created_at ASC LIMIT 100")
    rows = cur.fetchall()
    if not rows:
        return
    print(f"▶ Found {len(rows)} record(s) to sync")
    for qid, table, rec_id, op in rows:
        es_id = f"{table}_{rec_id}"
        try:
            if op == "delete":
                res = requests.delete(f"{ES_URL}/{table}/_doc/{es_id}")
                print(f"  • Deleted {table}/{es_id} → {res.status_code}")
            else:
                # Use the new joined query for m_product
                if table == "m_product":
                    cur.execute("""SELECT
                            p.ad_client_id,
                            p.ad_org_id,
                            p.created,
                            p.createdby,
                            p.updated,
                            p.updatedby,
                            p.m_product_id,
                            p.value           AS product_value,
                            p.sku,
                            p.upc,
                            p.mpn,
                            p.asin,
                            p.name            AS product_name,
                            plv.m_pricelist_version_id   AS pricelist_version_id,
                            plv.name                     AS pricelist_version_name,
                            pp.pricelist                 AS product_price,
                            w.m_warehouse_id             AS warehouse_id,
                            w.name                       AS warehouse_name
                        FROM m_product p
                        INNER JOIN m_productprice pp
                          ON pp.m_product_id = p.m_product_id
                        INNER JOIN m_pricelist_version plv
                          ON pp.m_pricelist_version_id = plv.m_pricelist_version_id
                          AND plv.isactive = 'Y'
                        INNER JOIN m_storage st
                          ON st.m_product_id = p.m_product_id
                          AND st.qtyonhand > 0
                        INNER JOIN m_locator loc
                          ON st.m_locator_id = loc.m_locator_id
                        INNER JOIN m_warehouse w
                          ON loc.m_warehouse_id = w.m_warehouse_id
                        WHERE p.isactive = 'Y'
                          AND p.m_product_id = %s""", (rec_id,))
                else:
                    cur.execute(f"SELECT * FROM {table} WHERE {table}_id = %s", (rec_id,))
                row = cur.fetchone()
                if not row:
                    print(f"  • No data found for {table} ID={rec_id}")
                    cur.execute("UPDATE es_sync_queue SET processed = true WHERE id = %s", (qid,))
                    conn.commit()
                    continue

                cols = [d[0] for d in cur.description]
                doc = dict(zip(cols, row))

                # Filter to required fields (field_map)
                doc = {k: doc[k] for k in field_map[table] if k in doc}

                # Enrich joins if not m_product
                if table != "m_product":
                    doc = enrich_with_joins(table, doc)

                # Index into Elasticsearch
                res = requests.put(
                    f"{ES_URL}/{table}/_doc/{es_id}",
                    data=json.dumps(doc, default=custom_converter),
                    headers={"Content-Type": "application/json"}
                )
                print(f"  • Indexed {table}/{es_id} → {res.status_code}")

            # Mark processed
            cur.execute("UPDATE es_sync_queue SET processed = true WHERE id = %s", (qid,))
            conn.commit()

        except Exception as e:
            print(f"Sync error for {table} ID={rec_id}: {e}")

# ─── Main ─────────────────────────────────────────────────────────────────────
if __name__ == "__main__":
    bootstrap_initial_data()
    while True:
        process_queue()
        time.sleep(POLL_INTERVAL)

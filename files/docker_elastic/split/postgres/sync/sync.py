import psycopg2
import requests
import json
import time
from decimal import Decimal
from datetime import datetime, date

conn = psycopg2.connect(
    dbname="idempiere",
    user="adempiere",
    password="MyWeak_Pa55w0rd",
    host="127.0.0.1",
    port=5432
)
cur = conn.cursor()
ES_URL = "http://elasticsearch:9200"

def custom_converter(o):
    if isinstance(o, Decimal):
        return float(o)
    if isinstance(o, (datetime, date)):
        return o.isoformat()
    raise TypeError(f"Not JSON serializable: {type(o)}")

field_map = {
    "m_product": ["m_product_id","ad_client_id","ad_org_id","isactive","created","createdby","updated","updatedby","value","name","description","documentnote","help","upc","sku","mpn","asin"],
    "c_bpartner": ["c_bpartner_id","ad_client_id","ad_org_id","isactive","created","createdby","updated","updatedby","value","name","name2","description","isonetime","isprospect","isvendor","iscustomer","isemployee"],
    "m_inout": ["m_inout_id","ad_client_id","ad_org_id","isactive","issotrx","documentno","docstatus","description","c_order_id","movementtype","c_bpartner_id","trackingno"],
    "c_order": ["c_order_id","ad_client_id","ad_org_id","isactive","issotrx","documentno","docstatus","shopware6_order_id","shopify_order_id","xentral_order_id","externalorderid"],
    "r_request": ["r_request_id","ad_client_id","ad_org_id","isactive","documentno","r_requesttype_id","r_group_id","r_category_id","r_status_id","r_resolution_id","r_requestrelated_id","priority","priorityuser","duetype","summary","confidentialtype","isescalated","isselfservice","salesrep_id","ad_role_id","datelastaction","datelastalert","lastresult","processed","isinvoiced","c_bpartner_id","ad_user_id","c_campaign_id","c_order_id","c_invoice_id","c_payment_id","m_product_id","c_project_id","a_asset_id","m_inout_id","m_rma_id"],
    "c_invoice": ["c_invoice_id","ad_client_id","ad_org_id","isactive","created","createdby","updated","updatedby","issotrx","documentno","docstatus","docaction","processing","processed","posted","c_doctype_id","c_doctypetarget_id","c_order_id","description"],
    "ad_user": ["ad_user_id","ad_client_id","ad_org_id","isactive","name","email","c_bpartner_id","phone","issaleslead","isvendorlead","issystemuser"]
}

def enrich_with_joins(table, doc):
    # ... same enrichment logic as before ...
    return doc

def bootstrap_initial_data():
    for table in field_map:
        pk = f"{table}_id"
        cur.execute(f"SELECT {pk} FROM {table}")
        for (rid,) in cur.fetchall():
            cur.execute("INSERT INTO es_sync_queue(table_name,record_id,operation) VALUES(%s,%s,'insert') ON CONFLICT DO NOTHING", (table, rid))
        conn.commit()

def process_queue():
    cur.execute("SELECT id,table_name,record_id,operation FROM es_sync_queue WHERE processed=false ORDER BY created_at ASC LIMIT 100")
    rows = cur.fetchall()
    for qid, table, rec_id, op in rows:
        es_id = f"{table}_{rec_id}"
        try:
            if op == "delete":
                requests.delete(f"{ES_URL}/{table}/_doc/{es_id}")
            else:
                cur.execute(f"SELECT * FROM {table} WHERE {table}_id=%s", (rec_id,))
                row = cur.fetchone()
                if not row: continue
                cols = [d[0] for d in cur.description]
                doc = dict(zip(cols, row))
                doc = {k:doc[k] for k in field_map[table] if k in doc}
                doc = enrich_with_joins(table, doc)
                requests.put(f"{ES_URL}/{table}/_doc/{es_id}", data=json.dumps(doc, default=custom_converter), headers={"Content-Type":"application/json"})
            cur.execute("UPDATE es_sync_queue SET processed=true WHERE id=%s", (qid,))
            conn.commit()
        except Exception as e:
            print("Sync error:", e)

bootstrap_initial_data()
while True:
    process_queue()
    time.sleep(10)

UPDATE ad_column SET isalwaysupdateable = 'Y',isupdateable = 'Y' WHERE ad_column_id IN (2175,2176,2201,2169,2172,2191,2177,2178,2179,2180,2200,3398);
INSERT INTO "adempiere"."ad_session" ("ad_session_id", "ad_client_id", "ad_org_id", "isactive", "created", "createdby", "updated", "updatedby", "websession", "remote_addr", "remote_host", "processed", "description", "ad_role_id", "logindate", "ad_session_uu", "servername") VALUES ('1000008', '11', '0', 'Y', '2024-02-29 13:02:42.901', '100', '2024-02-29 13:02:42.909', '100', 'idempiere-rest', '127.0.1.1', 'target2', 'N', 'Release 11_2023-12-24 iDempiere', '102', '2024-02-29 00:00:00', '92c4fbed-5ef8-4086-99fd-87ef5cabd178', 'target2:192.168.12.67');
INSERT INTO "adempiere"."rest_authtoken" ("rest_authtoken_id", "ad_client_id", "ad_org_id", "created", "createdby", "updated", "updatedby", "isactive", "rest_authtoken_uu", "name", "description", "ad_user_id", "token", "ad_role_id", "m_warehouse_id", "processed", "ad_session_id", "ad_language", "expireinminutes", "expiresat", "isexpired", "processing") VALUES ('1000000', '11', '0', '2024-02-29 13:02:42.884', '100', '2024-02-29 13:02:42.884', '100', 'Y', '53859b05-a7db-439e-9b62-f9773dfb8fd8', 'AllUse', NULL, '100', 'eyJraWQiOiJpZGVtcGllcmUiLCJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJTdXBlclVzZXIiLCJBRF9DbGllbnRfSUQiOjExLCJBRF9Vc2VyX0lEIjoxMDAsIkFEX1JvbGVfSUQiOjEwMiwiQURfT3JnX0lEIjowLCJBRF9MYW5ndWFnZSI6ImVuX1VTIiwiQURfU2Vzc2lvbl9JRCI6MTAwMDAwOCwiaXNzIjoiaWRlbXBpZXJlLm9yZyJ9.wAbfg9O8ppLNLVpRvlb6anTfJ6lZZr7gfnKbua2fHuaVCWJSdInx7b9DEWqfD5A8H1yFM08lwI7rXtrFtaYOpg', '102', NULL, 'Y', '1000008', 'en_US', '0', NULL, 'N', 'N');
DELETE FROM ad_sysconfig WHERE name = 'REST_TOKEN_SECRET';
INSERT INTO "adempiere"."ad_sysconfig" ("ad_sysconfig_id", "ad_client_id", "ad_org_id", "created", "updated", "createdby", "updatedby", "isactive", "name", "value", "description", "entitytype", "configurationlevel", "ad_sysconfig_uu") VALUES ('1000001', '0', '0', '2024-02-29 13:14:22.691', '2024-02-29 13:14:22.691', '0', '0', 'Y', 'REST_TOKEN_SECRET', '909c90c6-aec0-447e-b367-8d20e3f95d49', NULL, 'U', 'S', '6b8c2008-df54-4b8a-aace-fb03600a4673');
INSERT INTO "adempiere"."ad_sysconfig" ("ad_sysconfig_id", "ad_client_id", "ad_org_id", "created", "updated", "createdby", "updatedby", "isactive", "name", "value", "description", "entitytype", "configurationlevel", "ad_sysconfig_uu") VALUES ('1000002', '11', '0', '2024-02-28 13:42:51.701', '2024-02-28 13:42:51.701', '100', '100', 'Y', 'REST_MAX_RECORDS_SIZE', '0', NULL, 'U', 'C', '436a7fef-959a-42a0-bc66-391994a570e2');

UPDATE AD_Column SET IsSecure='N',Updated=TO_TIMESTAMP('2024-04-15 18:18:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=417;
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2024-04-15 18:19:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=417;

-- Set Access to ad_table and ad_entitytype
UPDATE AD_Table SET AccessLevel='6',Updated=TO_TIMESTAMP('2024-03-30 15:25:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=882;
UPDATE AD_Table SET AccessLevel='6',Updated=TO_TIMESTAMP('2024-03-30 15:25:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=100;
UPDATE AD_Table SET AccessLevel='6',Updated=TO_TIMESTAMP('2024-04-09 12:15:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=105;
UPDATE AD_Table SET AccessLevel='6',Updated=TO_TIMESTAMP('2024-04-09 12:34:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=376;
UPDATE AD_Table SET AccessLevel='6',Updated=TO_TIMESTAMP('2024-04-09 12:35:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=284;
UPDATE AD_Table SET AccessLevel='6',Updated=TO_TIMESTAMP('2024-04-09 12:35:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=895;

CREATE MATERIALIZED VIEW xy_mat_ad_preference AS
SELECT pref.ad_preference_id,
    pref.ad_client_id,
    pref.ad_org_id,
    pref.ad_window_id,
    wind.name AS ad_window_name,
    pref.attribute,
        CASE
            WHEN ((pref.attribute)::text = 'C_BPartner_ID'::text) THEN bp.value
            WHEN ((pref.attribute)::text = 'Bill_BPartner_ID'::text) THEN bp.value
            WHEN (((pref.attribute)::text = 'C_DocTypeTarget_ID'::text) OR ((pref.attribute)::text = 'C_DocType_ID'::text)) THEN ((doct.c_doctype_id)::text)::character varying
            ELSE pref.value
        END AS value,
        CASE
            WHEN ((pref.attribute)::text = 'C_BPartner_ID'::text) THEN bp.name
            WHEN ((pref.attribute)::text = 'Bill_BPartner_ID'::text) THEN bp.name
            WHEN (((pref.attribute)::text = 'C_DocTypeTarget_ID'::text) OR ((pref.attribute)::text = 'C_DocType_ID'::text)) THEN doct.name
            WHEN ((pref.attribute)::text = ANY (ARRAY[('DeliveryRule'::character varying)::text, ('DeliveryViaRule'::character varying)::text, ('FreightCostRule'::character varying)::text, ('InvoiceRule'::character varying)::text, ('PaymentRule'::character varying)::text, ('PriorityRule'::character varying)::text])) THEN adrefl.name
            ELSE pref.value
        END AS identifier,
    pref.ad_user_id,
    adu.name AS ad_user_name,
    adu.value AS ad_user_value
   FROM ((((((ad_preference pref
     LEFT JOIN ad_window wind ON ((pref.ad_window_id = wind.ad_window_id)))
     LEFT JOIN ad_user adu ON ((adu.ad_user_id = pref.ad_user_id)))
     LEFT JOIN c_bpartner bp ON ((((bp.c_bpartner_id)::text = (pref.value)::text) AND ((pref.attribute)::text = ANY (ARRAY[('C_BPartner_ID'::character varying)::text, ('Bill_BPartner_ID'::character varying)::text])))))
     LEFT JOIN c_doctype doct ON ((((doct.c_doctype_id)::text = (pref.value)::text) AND ((pref.attribute)::text = ANY (ARRAY[('C_DocTypeTarget_ID'::character varying)::text, ('C_DocType_ID'::character varying)::text])))))
     LEFT JOIN ad_reference adr ON ((((adr.name)::text ~~ ('%'::text || (pref.attribute)::text)) AND ((pref.attribute)::text = ANY (ARRAY[('DeliveryRule'::character varying)::text, ('DeliveryViaRule'::character varying)::text, ('FreightCostRule'::character varying)::text, ('InvoiceRule'::character varying)::text, ('PaymentRule'::character varying)::text, ('PriorityRule'::character varying)::text])))))
     LEFT JOIN ad_ref_list adrefl ON ((adrefl.ad_reference_id = adr.ad_reference_id)))
  WHERE ((pref.ad_window_id IS NOT NULL) AND (pref.value IS NOT NULL) AND (pref.isactive = 'Y'::bpchar))
  ORDER BY pref.ad_preference_id DESC;


-- Step 1: Create the trigger function
CREATE OR REPLACE FUNCTION update_materialized_view_ad_preference()
RETURNS TRIGGER AS
$$
BEGIN
    REFRESH MATERIALIZED VIEW xy_mat_ad_preference;
    RETURN NULL;
END;
$$
LANGUAGE plpgsql;

-- Create the trigger to only fire on INSERT or UPDATE
CREATE TRIGGER trigger_ad_preference
AFTER INSERT OR UPDATE
ON ad_preference
FOR EACH ROW
EXECUTE FUNCTION update_materialized_view_ad_preference();

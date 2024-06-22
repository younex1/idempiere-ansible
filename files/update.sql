UPDATE ad_column SET isalwaysupdateable = 'Y',isupdateable = 'Y' WHERE ad_column_id IN (2175,2176,2201,2169,2172,2191,2177,2178,2179,2180,2200,3398);
INSERT INTO "adempiere"."ad_session" ("ad_session_id", "ad_client_id", "ad_org_id", "isactive", "created", "createdby", "updated", "updatedby", "websession", "remote_addr", "remote_host", "processed", "description", "ad_role_id", "logindate", "ad_session_uu", "servername") VALUES ('1000008', '11', '0', 'Y', '2024-02-29 13:02:42.901', '100', '2024-02-29 13:02:42.909', '100', 'idempiere-rest', '127.0.1.1', 'target2', 'N', 'Release 11_2023-12-24 iDempiere', '102', '2024-02-29 00:00:00', '92c4fbed-5ef8-4086-99fd-87ef5cabd178', 'target2:192.168.12.67');
INSERT INTO "adempiere"."rest_authtoken" ("rest_authtoken_id", "ad_client_id", "ad_org_id", "created", "createdby", "updated", "updatedby", "isactive", "rest_authtoken_uu", "name", "description", "ad_user_id", "token", "ad_role_id", "m_warehouse_id", "processed", "ad_session_id", "ad_language", "expireinminutes", "expiresat", "isexpired", "processing") VALUES ('1000000', '11', '0', '2024-02-29 13:02:42.884', '100', '2024-02-29 13:02:42.884', '100', 'Y', '53859b05-a7db-439e-9b62-f9773dfb8fd8', 'AllUse', NULL, '100', 'eyJraWQiOiJpZGVtcGllcmUiLCJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJTdXBlclVzZXIiLCJBRF9DbGllbnRfSUQiOjExLCJBRF9Vc2VyX0lEIjoxMDAsIkFEX1JvbGVfSUQiOjEwMiwiQURfT3JnX0lEIjowLCJBRF9MYW5ndWFnZSI6ImVuX1VTIiwiQURfU2Vzc2lvbl9JRCI6MTAwMDAwOCwiaXNzIjoiaWRlbXBpZXJlLm9yZyJ9.wAbfg9O8ppLNLVpRvlb6anTfJ6lZZr7gfnKbua2fHuaVCWJSdInx7b9DEWqfD5A8H1yFM08lwI7rXtrFtaYOpg', '102', NULL, 'Y', '1000008', 'en_US', '0', NULL, 'N', 'N');
DELETE FROM ad_sysconfig WHERE name = 'REST_TOKEN_SECRET';
INSERT INTO "adempiere"."ad_sysconfig" ("ad_sysconfig_id", "ad_client_id", "ad_org_id", "created", "updated", "createdby", "updatedby", "isactive", "name", "value", "description", "entitytype", "configurationlevel", "ad_sysconfig_uu") VALUES ('1000001', '0', '0', '2024-02-29 13:14:22.691', '2024-02-29 13:14:22.691', '0', '0', 'Y', 'REST_TOKEN_SECRET', '909c90c6-aec0-447e-b367-8d20e3f95d49', NULL, 'U', 'S', '6b8c2008-df54-4b8a-aace-fb03600a4673');
INSERT INTO "adempiere"."ad_sysconfig" ("ad_sysconfig_id", "ad_client_id", "ad_org_id", "created", "updated", "createdby", "updatedby", "isactive", "name", "value", "description", "entitytype", "configurationlevel", "ad_sysconfig_uu") VALUES ('1000002', '11', '0', '2024-02-28 13:42:51.701', '2024-02-28 13:42:51.701', '100', '100', 'Y', 'REST_MAX_RECORDS_SIZE', '0', NULL, 'U', 'C', '436a7fef-959a-42a0-bc66-391994a570e2');

INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (nextidfunc(188,'N'),0,0,'Y',TO_TIMESTAMP('2024-05-16 13:03:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-05-16 13:03:48','YYYY-MM-DD HH24:MI:SS'),100,'Strapi_Attachment_ID','Strapi_Attachment_ID','Strapi_Attachment_ID','U','e62fba0b-fd24-40c7-b0f5-2b4ef198816e');
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (nextidfunc(3,'N'),0,'Strapi_Attachment_ID',254,'Strapi_Attachment_ID',14,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2024-05-16 13:04:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-05-16 13:04:26','YYYY-MM-DD HH24:MI:SS'),100,toRecordId('AD_Element','e62fba0b-fd24-40c7-b0f5-2b4ef198816e'),'Y','N','U','N','Y','N','Y','f796e349-9921-444b-862d-d909c340ebe5','Y',0,'N','N','N','N');
INSERT INTO t_alter_column values('ad_attachment','Strapi_Attachment_ID','NUMERIC(10)',null,'NULL');


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


-- Create Strapi_Product_ID
--INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (nextidfunc(188,'N'),0,0,'Y',TO_TIMESTAMP('2024-04-29 05:51:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-04-29 05:51:12','YYYY-MM-DD HH24:MI:SS'),100,'Strapi_Product_ID','Strapi_Product_ID','Strapi_Product_ID','U','24779c5c-f441-41b2-8e3b-b1e4f1dd7475');
--INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (nextidfunc(3,'N'),0,'Strapi_Product_ID',259,'Strapi_Product_ID',14,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2024-04-29 05:51:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-04-29 05:51:23','YYYY-MM-DD HH24:MI:SS'),100,toRecordId('AD_Element','24779c5c-f441-41b2-8e3b-b1e4f1dd7475'),'Y','N','U','N','N','N','Y','285ab499-3bf7-4674-8830-64b222023d02','Y',0,'N','N','N','N');
--UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2024-04-29 05:51:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_UU='285ab499-3bf7-4674-8830-64b222023d02';
--INSERT INTO t_alter_column values('c_order','Strapi_Product_ID','NUMERIC(10)',null,'NULL');
--INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (nextidfunc(4,'N'),'Strapi_Product_ID',186,toRecordId('AD_Column','285ab499-3bf7-4674-8830-64b222023d02'),'Y',0,620,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-04-29 05:53:40','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-04-29 05:53:40','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',113,'A','083158bd-da26-48b1-9edb-1fd7a19197b6','Y',580,1,1,1,'N','N','N','N');

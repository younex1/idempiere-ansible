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

-- Add Sendcloud Column to M_Inout Table and Shipment Window
-- Aug 20, 2024, 9:40:46 AM CEST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (nextidfunc(188,'N'),0,0,'Y',TO_TIMESTAMP('2024-08-20 09:40:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-08-20 09:40:46','YYYY-MM-DD HH24:MI:SS'),100,'Sendcloud_Parcel_ID','Sendcloud_Parcel_ID','Sendcloud_Parcel_ID','U','7727d059-f4ab-4271-a794-868055212ff6');
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (nextidfunc(3,'N'),0,'Sendcloud_Parcel_ID',319,'Sendcloud_Parcel_ID',20,'N','N','N','N','N',0,'N',13,0,0,'Y',TO_TIMESTAMP('2024-08-20 09:41:42','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-08-20 09:41:42','YYYY-MM-DD HH24:MI:SS'),100,toRecordId('AD_Element','7727d059-f4ab-4271-a794-868055212ff6'),'Y','N','U','N','Y','N','Y','93b73acb-933e-4fbb-9046-177f079aecc2','Y',0,'N','N','N','N');
ALTER TABLE M_InOut ADD COLUMN Sendcloud_Parcel_ID NUMERIC(10) DEFAULT NULL;
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (nextidfunc(4,'N'),'Sendcloud_Parcel_ID',257,toRecordId('AD_Column','93b73acb-933e-4fbb-9046-177f079aecc2'),'Y',0,580,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-08-20 09:44:07','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-08-20 09:44:07','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','c616e62c-5aa6-4661-9998-a049c618aba8','Y',570,1,1,1,'N','N','N','N');


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

--Create Strapi Product-ID + Attachment-ID (For Product and Attachment Table only)
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (nextidfunc(188,'N'),0,0,'Y',TO_TIMESTAMP('2024-06-23 10:05:59','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-23 10:05:59','YYYY-MM-DD HH24:MI:SS'),100,'Strapi_Product_ID','Strapi_Product_ID','Strapi_Product_ID','U','1f57c648-33b1-41f2-ab34-d1e9ae0e1f30');
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (nextidfunc(188,'N'),0,0,'Y',TO_TIMESTAMP('2024-06-23 10:06:57','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-23 10:06:57','YYYY-MM-DD HH24:MI:SS'),100,'Strapi_Attachment_ID','Strapi_Attachment_ID','Strapi_Attachment_ID','U','de62fecd-af3a-4708-98a2-55e82681d5fa');
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (nextidfunc(3,'N'),0,'Strapi_Product_ID',208,'Strapi_Product_ID',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2024-06-23 10:08:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-23 10:08:23','YYYY-MM-DD HH24:MI:SS'),100,toRecordId('AD_Element','1f57c648-33b1-41f2-ab34-d1e9ae0e1f30'),'Y','N','U','N','N','N','Y','5298740e-54d8-4e7e-a5a0-bcb7e6902436','Y',0,'N','N','N','N');
ALTER TABLE M_Product ADD COLUMN Strapi_Product_ID NUMERIC(10) DEFAULT NULL;
INSERT INTO AD_Field (AD_Field_ID,Name,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType,AD_Field_UU,IsDisplayedGrid,SeqNoGrid,XPosition,ColumnSpan,NumLines,IsQuickEntry,IsDefaultFocus,IsAdvancedField,IsQuickForm) VALUES (nextidfunc(4,'N'),'Strapi_Product_ID',180,toRecordId('AD_Column','5298740e-54d8-4e7e-a5a0-bcb7e6902436'),'Y',0,620,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2024-06-23 10:09:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-23 10:09:06','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','U','de12e1b2-0c0d-4d34-9a1f-942efa34ae34','Y',610,1,1,1,'N','N','N','N');
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (nextidfunc(3,'N'),0,'Strapi_Attachment_ID',254,'Strapi_Attachment_ID',10,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2024-06-23 10:10:48','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-06-23 10:10:48','YYYY-MM-DD HH24:MI:SS'),100,toRecordId('AD_Element','de62fecd-af3a-4708-98a2-55e82681d5fa'),'Y','N','U','N','N','N','Y','27ba6c29-1648-43a8-8e0b-93b2e1e1709f','Y',0,'N','N','N','N');
ALTER TABLE AD_Attachment ADD COLUMN Strapi_Attachment_ID NUMERIC(10) DEFAULT NULL;


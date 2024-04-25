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

-- Strapi
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,PrintName,EntityType,AD_Element_UU) VALUES (nextidfunc(188,'N'),0,0,'Y',TO_TIMESTAMP('2024-04-25 06:55:03','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-04-25 06:55:03','YYYY-MM-DD HH24:MI:SS'),100,'Strapi_Product_ID','Strapi_Product_ID','Strapi_Product_ID','U','0fa2cbc5-507a-45c8-a653-1e06dd7a049a');
INSERT INTO AD_Column (AD_Column_ID,Version,Name,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging,AD_Column_UU,IsAllowCopy,SeqNoSelection,IsToolbarButton,IsSecure,IsHtml,IsPartitionKey) VALUES (nextidfunc(3,'N'),0,'Strapi_Product_ID',208,'Strapi_Product_ID',22,'N','N','N','N','N',0,'N',11,0,0,'Y',TO_TIMESTAMP('2024-04-25 06:55:20','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2024-04-25 06:55:20','YYYY-MM-DD HH24:MI:SS'),100,toRecordId('AD_Element','0fa2cbc5-507a-45c8-a653-1e06dd7a049a'),'Y','N','U','N','Y','N','Y','ccabb1d0-fd93-406a-b65b-2556c22e0e68','Y',0,'N','N','N','N');
INSERT INTO t_alter_column values('m_product','Strapi_Product_ID','NUMERIC(10)',null,'NULL');

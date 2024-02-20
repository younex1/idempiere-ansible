#!/bin/Bash
export PGPASSWORD='MyWeak_Pa55w0rd'
#psql -h '127.0.0.1' -U 'adempiere' -d 'idempiere' -c "UPDATE ad_column SET isalwaysupdateable = 'Y',isupdateable = 'Y' WHERE ad_column_id = 2175"
psql -h '127.0.0.1' -U 'adempiere' -d 'idempiere' -f /opt/sql/migration/files/update.sql

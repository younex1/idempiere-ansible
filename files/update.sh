#!/bin/bash
export PGPASSWORD='MyWeak_Pa55w0rd'
#psql -h '127.0.0.1' -U 'adempiere' -d 'idempiere' -c "UPDATE ad_column SET isalwaysupdateable = 'Y',isupdateable = 'Y' WHERE ad_column_id = 2175"
psql -h '127.0.0.1' -U 'adempiere' -d 'idempiere' -f /opt/sql/migration/files/update.sql

curl --insecure --location --request DELETE 'http://127.0.0.1:8080/api/v1/caches' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Authorization: Bearer eyJraWQiOiJpZGVtcGllcmUiLCJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJTdXBlclVzZXIiLCJBRF9DbGllbnRfSUQiOjExLCJBRF9Vc2VyX0lEIjoxMDAsIkFEX1JvbGVfSUQiOjEwMiwiQURfT3JnX0lEIjowLCJBRF9MYW5ndWFnZSI6ImVuX1VTIiwiQURfU2Vzc2lvbl9JRCI6MTAwMDAxMywiaXNzIjoiaWRlbXBpZXJlLm9yZyJ9.RRXfJC4UvP8oLrOJXhUoW1-2HNtsx8l1flDNzX4CQzAz2BmKjwNrBIgVQc7-TaPXfQ-7nnkTlyM8A-BwHA9iqw'

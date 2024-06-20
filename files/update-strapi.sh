#!/bin/bash
export PGPASSWORD='MyWeak_Pa55w0rd'
psql -h '127.0.0.1' -U 'adempiere' -d 'idempiere' -f /root/update-strabi-db.sql

#!/bin/bash
export PGPASSWORD='strapi'
psql -h '127.0.0.1' -U 'strapi' -d 'strapi' -f /root/update-strabi-db.sql

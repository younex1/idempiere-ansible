#!/bin/bash
docker stop elasticsearch
docker rm elasticsearch

docker stop idempiere-sync
docker rm idempiere-sync

#psql -U adempiere -d idempiere -f db/triggers.sql
docker compose up -d

#docker-compose build sync
#docker-compose up sync

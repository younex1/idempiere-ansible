#!/bin/bash
docker stop elasticsearch
docker rm elasticsearch

docker stop idempiere-sync
docker rm idempiere-sync

docker-compose build sync
docker-compose up sync
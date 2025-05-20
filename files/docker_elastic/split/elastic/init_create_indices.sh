#!/bin/bash
ES_URL=http://127.0.0.1:9200
curl -X PUT "$ES_URL/m_product" -H 'Content-Type: application/json' --data-binary @es_mappings/m_product.json
curl -X PUT "$ES_URL/c_order" -H 'Content-Type: application/json' --data-binary @es_mappings/c_order.json
curl -X PUT "$ES_URL/m_inout" -H 'Content-Type: application/json' --data-binary @es_mappings/m_inout.json
curl -X PUT "$ES_URL/c_invoice" -H 'Content-Type: application/json' --data-binary @es_mappings/c_invoice.json
curl -X PUT "$ES_URL/r_request" -H 'Content-Type: application/json' --data-binary @es_mappings/r_request.json
curl -X PUT "$ES_URL/ad_user" -H 'Content-Type: application/json' --data-binary @es_mappings/ad_user.json
curl -X PUT "$ES_URL/c_bpartner" -H 'Content-Type: application/json' --data-binary @es_mappings/c_bpartner.json



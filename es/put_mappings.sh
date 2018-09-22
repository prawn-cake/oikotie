#ES_HOST=localhost:9200/oikotie
ES_HOST=https://es.prwnck.com/oikotie
curl -s -X PUT "${ES_HOST}" -H 'Content-Type: application/json' -d"$(cat es_mappings.json)"

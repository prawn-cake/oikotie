# Oikotie

Stats and core data


## Upload data to ElasticSearch

Using amazing jq

    cat es_all.json | jq -c '.[] | {"index": {"_index": "oikotie", "_type": "doc", "_id": .id}}, .' | curl -s -H'Content-Type: application/json' -XPOST localhost:9200/oikotie/doc/_bulk?pretty --data-binary @-

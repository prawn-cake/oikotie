# Oikotie

Stats and core data


## Upload data to ElasticSearch

Using amazing jq

	cat all.json | jq -c '.[] | {"index": {"_index": "oikotie", "_type": "oikotie", "_id": .id}}, .' | curl -H 'Content-Type: application/json' -XPOST localhost:9200/_bulk --data-binary @-

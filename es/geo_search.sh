#ES_HOST=localhost:9200/oikotie
ES_HOST=https://es.prwnck.com/oikotie
curl -s -X POST "${ES_HOST}/_search" -H 'Content-Type: application/json' -d'
{
    "query": {
        "bool" : {
            "must" : {
                "match_all" : {}
            },
            "filter" : {
                "geo_distance" : {
                    "distance" : "10m",
                    "location" : {
                        "lat" : 60.242558,
                        "lon" : 24.742949
                    }
                }
            }
        }
    }
}
'

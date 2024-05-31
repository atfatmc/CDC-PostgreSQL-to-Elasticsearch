curl -i -X PUT -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:9200/comments -d @reqs/mappings/comments.json

# setup connections
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @reqs/connections/es-sink-comments.json
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @reqs/connections/cdc-connector.json

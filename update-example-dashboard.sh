#!/bin/bash
curl -k -u admin:admin "localhost:3000/api/dashboards/db/example" | jq '.dashboard.id = null' | jq '.dashboard'  > ./grafana/dashboards/example.json

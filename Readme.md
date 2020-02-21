"How to get the latest panel"
http://localhost:3000/api/dashboards/db/example

One of the most important part is the provisioning
1. Provisioning the data source.
2. Provisining the dashboard.



curl -k -u admin:admin "localhost:3000/api/dashboards/db/example" | jq '.dashboard.id = null' | jq '.dashboard'  > ./grafana/dashboards/example.json

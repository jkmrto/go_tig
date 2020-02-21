This is just a pet projet to get familiar with the TIG stack.

The idea is used a dockerize version of the stack for:

	- Telegraf

	- Grafana

	- InfluxDB

## "How to get the latest saved dashboard"

http://localhost:3000/api/dashboards/db/example

This is useful to to update the dashboard on local without having to copy it expilicitly: (https://github.com/grafana/grafana/issues/13029)
```
curl -k -u admin:admin "localhost:3000/api/dashboards/db/example" | jq '.dashboard.id = null' | jq '.dashboard'  > ./grafana/dashboards/example.json
```

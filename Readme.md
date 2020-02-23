This is just a pet projet to get familiar with the TIG stack.

The idea to use a dockerize version of the stack for:

- Telegraf

- Grafana

- InfluxDB

## How to get the latest saved dashboard

Here it is accesible the definition of the dasboard:
```
http://localhost:3000/api/dashboards/db/example
```


This is useful to to update the dashboard on local without having to copy it expilicitly: (https://github.com/grafana/grafana/issues/13029)
```
curl -k -u admin:admin "localhost:3000/api/dashboards/db/example" | jq '.dashboard.id = null' | jq '.dashboard'  > ./grafana/dashboards/example.json
```


## Inject data to Telegraf

As test it is possible to inject data to telegraf using `inject-dummy.sh` script.

```Bash
./inject-dummy.sh
```

I tried to use UDP instead of TCP on telegraf setup for injecting data, but seems there is some problems when using UDP and Docker: https://github.com/moby/moby/issues/15127

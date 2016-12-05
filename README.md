# elk-docker-compose
Deploy logging system elk 5.0 (elasticsearch - logstash - kibana) by docker compose

## Architecture Overview 

![architecture](https://github.com/cuongnb14/elk-docker-compose/raw/master/architecture.png)

Note: Use nginx to authen for kibana

## Deploy

- Rename file docker-compose.tmpl.yml : `cp docker-compose.tmpl.yml docker-compose.yml`

- Reconfig cpu, ram for containers

- Runcommand: `make up`

If can't run elasticsearch container you should run command on hosts: `sysctl -w vm.max_map_count=262144`

See: [https://www.elastic.co/guide/en/elasticsearch/reference/5.0/vm-max-map-count.html](https://www.elastic.co/guide/en/elasticsearch/reference/5.0/vm-max-map-count.html)
## Redeploy

Note: It will remove all database

- Runcommand: `make reup`

## Check result

- Runcommand: `curl -s 'localhost:9200/_cat/indices?v'`

## Use

- Access: `http://localhost:8080/`
- Authen by: username `USER`, pass `PASSWORD`

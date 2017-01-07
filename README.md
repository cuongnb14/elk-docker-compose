# elk-docker-compose
Deploy logging system elk 5.0 (elasticsearch - logstash - kibana) by docker compose

## Architecture Overview

![architecture](https://github.com/cuongnb14/elk-docker-compose/raw/master/architecture.png)

Note: Use nginx to authen for kibana

## Deploy

### Central

Use elkcentral folder.

- Use openssl to create username and password for nginx:

    `printf "USER:$(openssl passwd -crypt PASSWORD)\n" > nginx-config/passwords`

- Run command: `make up`

If can't run elasticsearch container you should run command on hosts: `sysctl -w vm.max_map_count=262144`

See: [https://www.elastic.co/guide/en/elasticsearch/reference/5.0/vm-max-map-count.html](https://www.elastic.co/guide/en/elasticsearch/reference/5.0/vm-max-map-count.html)

### Agent

Use elkagent folder.

- Create file docker-compose.yml: `cp docker-compose.tmpl.yml docker-compose.yml`

- Reconfig cpu, ram for containers and **mount logs folder** for filebeat

- Create file filebeat.yml:  `cp filebeat-config/filebeat.tmpl.yml filebeat-config/filebeat.yml`

- Reconfig for filebeat: log file, redis host

- Run: `docker-compose up -d`

## Redeploy

Note: It will remove all database

- Run command: `make reup`

## Use

- Access: `http://localhost:8080/`
- Authen by: username `USER`, pass `PASSWORD`

# elk-docker-compose
Deploy logging system elk 5.0 (elasticsearch - logstash - kibana) by docker compose

## Overview

file-log.log -> filebeat -> redis -> logstash -> elasticsearch -> kibana

## Deploy

Runcommand: `make up`

## Redeploy 

Note: It will remove all database

Runcommand: `make clean && make up` 

## Check result

Runcommand: `curl -s 'localhost:9200/_cat/indices?v'`

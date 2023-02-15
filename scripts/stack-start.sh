#!/bin/bash

# Pull latest code
git pull origin main

# start docker container sonar in backgound
docker-compose -f ./docker-compose-sonar.yaml --env-file ./config/.env.dev up -d

# start docker container nginx proxy manager in backgound
docker-compose -f ./docker-compose-nginx.yaml --env-file ./config/.env.dev up -d

# start docker container bitwarden in backgound
docker-compose -f ./docker-compose-bitwarden.yaml --env-file ./config/.env.dev up -d

# start docker container gitlab
docker-compose -f ./docker-compose-gitlab.yaml --env-file ./config/.env.dev up -d

# start docker container for prometheus-grafana
docker-compose -f ./docker-compose-prometheus-grafana.yaml --env-file ./config/.env.dev up -d

# start docker container for jenkins
docker-compose -f ./docker-compose-jenkins.yaml --env-file ./config/.env.dev up -d

# start docker container for mongodb
docker-compose -f ./docker-compose-mongodb.yaml --env-file ./config/.env.dev up -d

# start docker container for postfix
docker-compose -f ./docker-compose-postfix.yaml --env-file ./config/.env.dev up -d

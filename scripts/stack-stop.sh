#!/bin/bash

#stop docker sonar container
docker-compose -f ./docker-compose-sonar.yaml --env-file ./config/.env.dev stop

#stop docker container nginx proxy manager
docker-compose -f ./docker-compose-nginx.yaml --env-file ./config/.env.dev stop

#stop docker container bitwarden
docker-compose -f ./docker-compose-bitwarden.yaml --env-file ./config/.env.dev stop

#stop docker container gitlab
docker-compose -f ./docker-compose-gitlab.yaml --env-file ./config/.env.dev stop

# stop docker container prometheus grafana
docker-compose -f ./docker-compose-prometheus-grafana.yaml --env-file ./config/.env.dev stop

#stop docker container mongodb
docker-compose -f ./docker-compose-mongodb.yaml --env-file ./config/.env.dev stop

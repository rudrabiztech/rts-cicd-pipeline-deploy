#!/bin/bash

#destroy docker container
docker-compose -f ./docker-compose-sonar.yaml --env-file ./config/.env.dev down -v

#destroy docker container
docker-compose -f ./docker-compose-nginx.yaml --env-file ./config/.env.dev down -v

#destroy docker bitwarden
docker-compose -f ./docker-compose-bitwarden.yaml --env-file ./config/.env.dev down -v

#destroy docker gitlab
docker-compose -f ./docker-compose-gitlab.yaml --env-file ./config/.env.dev down -v

#destroy docker mongodb
docker-compose -f ./docker-compose-mongodb.yaml --env-file ./config/.env.dev down -v

#!/bin/bash

#destroy docker container
docker-compose -f ./docker-compose-sonar.yaml --env-file ./config/.env.dev down -v

#destroy docker container
docker-compose -f ./docker-compose-nginx.yaml --env-file ./config/.env.dev down -v

#destroy docker gitlab
docker-compose -f ./docker-compose-gitlab.yaml --env-file ./config/.env.dev down -v

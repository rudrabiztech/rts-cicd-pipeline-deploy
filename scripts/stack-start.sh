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
docker-compose -f ./docker-compose-gitlab.yml --env-file ./config/.env.dev up -d

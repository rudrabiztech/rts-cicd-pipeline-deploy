#stop docker sonar container
docker-compose -f ./docker-compose-sonar.yaml --env-file ./config/.env.dev stop

#stop docker container nginx proxy manager
docker-compose -f ./docker-compose-nginx.yaml --env-file ./config/.env.dev stop

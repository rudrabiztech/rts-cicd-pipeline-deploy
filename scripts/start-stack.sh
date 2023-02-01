# Pull latest code
git pull origin main

# start docker container in backgound
docker-compose --env-file ./config/.env.dev up -d --remove-orphans

# start docker container nginx proxy manager in backgound
docker-compose -f ./docker-compose-nginx.yaml up -d

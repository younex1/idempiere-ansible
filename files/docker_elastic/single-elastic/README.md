#Delete existing docker for new initialization
docker compose down
docker compose down --volumes
docker system prune --volumes --all --force
#docker ps -a

#Then rebuild and start docker
docker compose build --no-cache sync
docker compose up -d
docker compose logs -f sync


#With different docker command
docker-compose down
docker-compose down --volumes
docker system prune --volumes --all --force
#docker ps -a
docker-compose build --no-cache sync
docker-compose up -d
docker-compose logs -f sync

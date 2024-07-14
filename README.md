# devsecops

DevSecOps

# Run with docker compose up

docker compose -f docker_pro/docker-compose.yml up --build -d

docker compose -f kubernetes_compose/docker-compose.yml up --build -d

# Run with docker compose down

docker compose -f docker_pro\docker-compose.yml down

# Remove all containers

docker rm $(docker ps -a -q)

# Remove all images

docker rmi $(docker images -q)

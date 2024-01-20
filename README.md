# devsecops

DevSecOps

# Build your FastAPI image:

docker build -t fastapi -f docker_pro\Dockerfile .

# Run a container based on your image:

docker run -d --name fastapi_container -p 8888:80 fastapi

# Stop the existing container

docker stop fastapi_container

# Remove the existing container

docker rm fastapi_container

# Run with docker compose

docker-compose -f docker_pro\docker-compose.yml up --build -d


# Create a Volume:

docker volume create my_volume

# List Volumes:

docker volume ls

# Inspect a Volume:

docker volume inspect my_volume

# Mount a Volume in a Container:

docker run -v my_volume:/path/in/container my_image

# Remove a Volume:

docker volume rm my_volume


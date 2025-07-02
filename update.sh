#!/bin/bash

# Define the root directory where your Docker Compose projects are located (if you have multiple projects)
DOCKER_COMPOSE_DIRS=(
    "/home/elias/docker/nextcloud"
    "/home/elias/docker/jupyter"
    "/home/elias/docker/website"
    "/home/elias/docker/navidrome"
)

# Loop through all directories and update containers
for DIR in "${DOCKER_COMPOSE_DIRS[@]}"; do
    echo "-----------------------------------------"
    echo "Updating containers in $DIR..."
    
    # Navigate to the directory
    cd "$DIR" || continue
    
    # Check if a .env file exists, and if so, pass it to the docker-compose command
    if [ -f ".env" ]; then
        echo "Found .env file, using it for Docker Compose"
        ENV_FILE="--env-file .env"
    else
        echo "No .env file found, skipping ENV_FILE flag"
        ENV_FILE=""
    fi

    # Pull the latest images
    echo "Pulling latest images..."
    sudo docker compose $ENV_FILE pull

    # Stop and remove the containers
    echo "Stopping containers..."
    sudo docker compose $ENV_FILE down

    # Recreate the containers with the latest images
    echo "Recreating containers..."
    sudo docker compose $ENV_FILE up -d

    echo "-----------------------------------------"
done

# Clean up unused images
echo "Cleaning up unused images..."
sudo docker image prune -f

echo "Docker containers have been updated!"

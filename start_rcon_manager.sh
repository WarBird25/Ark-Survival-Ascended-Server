#!/bin/bash

# Check if the Docker container is running
if [ $(docker compose ps -q asaserver | wc -l) -eq 0 ]; then
    echo "ARK Server container is not running. Please start it first with 'docker-compose up -d'."
    exit 1
fi

# Attach to the running container and start the RCON interface
echo "Starting the POK Server Manager (RCON Interface)..."
docker compose exec -T asaserver /usr/games/scripts/rcon_interface.sh

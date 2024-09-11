#!/bin/bash

if docker compose ps | grep "htb"; then
    echo "docker compose down"
    docker compose down
else
    echo "Starting Docker containers..."
    docker compose up --build -d
fi

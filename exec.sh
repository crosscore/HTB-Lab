#!/bin/bash

if docker compose ps | grep "htb"; then
    echo "docker compose exec htb-lab bash"
    docker compose exec htb-lab bash
fi

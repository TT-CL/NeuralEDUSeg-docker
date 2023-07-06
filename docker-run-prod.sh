#!/bin/sh
docker compose -f docker/docker-compose.yml -f docker/docker-compose-production.yml up -d "$@"


#!/usr/bin/env bash
docker-compose -p commerce2 -f docker-compose.yml.dist build
docker-compose -p commerce2 -f docker-compose.yml.dist pull
docker-compose -p commerce2 -f docker-compose.yml.dist up -d

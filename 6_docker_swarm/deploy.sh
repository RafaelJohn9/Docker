#!/usr/bin/env bash
# file used for deployment

docker stack deploy -c docker-compose.yml my_stack
docker service scale my_stack_web-app=3

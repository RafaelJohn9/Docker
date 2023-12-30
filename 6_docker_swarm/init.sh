#!/usr/bin/env bash
# creates a docker swarm

docker swarm init
docker network create --driver overlay my_overlay_network

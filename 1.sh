#!/usr/bin/env bash
# Basic container operations

# running a simple container
docker run hello-world

# pulling the latest ubuntu image
docker pull ubuntu:latest

# running an interactive session of the container
docker run -it ubuntu /bin/bash

# listing all containers
docker ps -a

# listing all running containers
docker ps

# stoppin a running container
docker stop container_name_or_id

# removing a container
docker rm container_name_or_ie

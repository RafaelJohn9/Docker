#!/usr/bin/env bash
# dealing with volume consistency

# creating the volume writing on it
docker volume create myVolume
docker -d --name containerWithVolume -v myVolume:/app/data nginx
docker exec -it sh -c "echo 'Hello this is persistent storage' > /app/data/myfile.txt"

# stopping and removing the container
docker stop containerWithVolume
docker rm containerWithVolume

# starting a new container
docker run -d --name newContainerWithVolume -v myVolume:/app/data nginx

# data written in the previous container should be availabe in the new container

#!/usr/bin/env bash
# using bind mounts

# creating the  mount
docker run  -d --name container_with_bind_mount  -v /path/to/host/directory:/app/data nginx
echo 'Hello bind mount!' > /path/to/host/directory/myfile.txt
docker exec -it container_with_bind_mount cat /app/data/myfile.txt

# stop and remove the container
docker stop container_with_bind_mount
docker rm container_with_bind_mount

# Start a new container, using the same bind mount
docker run -d --name new_container_with_bind_mount -v /path/to/host/directory:/app/data nginx

# Observe changes from the host directory inside the new container
docker exec -it new_container_with_bind_mount cat /app/data/myfile.txt

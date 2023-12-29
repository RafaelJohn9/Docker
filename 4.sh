#!/usr/bin/env bash
# it is used to connect to containers

docker network create myNetwork
docker run -d --name container1 --network myNetwork -p 8081:80 nginx
docker run -d --name container2 --network myNetwork -p 8082:80 nginx


# if you execute
docker exec -it container2 sh -c "curl http://container1"
#                or
docker exec -it container1 sh -c "curl http://container2"

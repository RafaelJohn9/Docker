#!/usr/bin/env bash
# creates a docker container with limited resources
docker run -d --name contstrained_container --cpus="0.5" --memory="256m" nginx

#!/usr/bin/env bash
# a file that is used to build an image and run an interactive session of a container created

docker build -t debian_image -f debian_img .

docker run -it debian_image /bin/bash

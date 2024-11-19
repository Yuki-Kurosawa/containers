#! /bin/bash
IMAGE=yukikurosawadev/edk2
TAG=noble-dev-202408
docker build --tag $IMAGE:$TAG -f Dockerfile.edk2 . 
docker run -it -v "$HOME":"$HOME" -e EDK2_DOCKER_USER_HOME="$HOME" --name edk2 $IMAGE:$TAG /bin/bash
docker container rm edk2
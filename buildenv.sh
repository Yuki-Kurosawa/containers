#! /bin/bash
IMAGE=yukikurosawadev/edk2
TAG=noble-dev-202408
docker build --tag $IMAGE:$TAG -f Dockerfile.edk2 . 
docker run -it -v "$PWD/home":"$PWD/home" -e EDK2_DOCKER_USER_HOME="$PWD/home" --name edk2 $IMAGE:$TAG /bin/bash
docker container rm edk2
#! /bin/bash

IMAGE=yukikurosawadev/edk2
TAG=noble-dev

docker run -it -v "$PWD/home":"$PWD/home" -e EDK2_DOCKER_USER_HOME="$PWD/home" $IMAGE:$TAG /bin/bash
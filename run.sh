#! /bin/bash

IMAGE=yukikurosawadev/edk2
TAG=noble-dev-202505

docker run -it -v "${HOME}":"${HOME}" -e EDK2_DOCKER_USER_HOME="${HOME}" $IMAGE:$TAG /bin/bash

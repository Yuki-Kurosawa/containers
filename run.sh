#! /bin/bash

docker run -it -v "$PWD/home":"$PWD/home" -e EDK2_DOCKER_USER_HOME="$PWD/home" test /bin/bash
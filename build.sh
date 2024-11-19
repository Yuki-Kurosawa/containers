#! /bin/bash

IMAGE=yukikurosawadev/edk2
TAG=noble-dev
docker build --tag $IMAGE:$TAG -f Dockerfile .
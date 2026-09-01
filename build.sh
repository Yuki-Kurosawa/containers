#! /bin/bash

IMAGE=yukikurosawadev/edk2
TAG=trixie-dev
docker build --tag $IMAGE:$TAG -f Dockerfile .
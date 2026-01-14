#!/bin/sh
echo "$INPUT_PASSWORD" | docker login $INPUT_REGISTRY -u $INPUT_USERNAME --password-stdin
docker build -t $INPUT_REGISTRY/$INPUT_IMAGE_NAME:$INPUT_TAG -f .github/actions/react-docker-s2i/Dockerfile.react .
docker push $INPUT_REGISTRY/$INPUT_IMAGE_NAME:$INPUT_TAG

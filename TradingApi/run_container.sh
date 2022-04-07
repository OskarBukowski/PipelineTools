#!/bin/bash

# $1 --> VERSION
# $2 --> BUILD NUMBER


RUNNING_BEFORE=$(docker info | grep "Running:" | cut -f' ' -f4)
CONTAINER_NAME="api:$1"

docker build -t "$CONTAINER_NAME" .
docker run -d "$CONTAINER_NAME"

RUNNING_AFTER=$(docker info | grep "Running:" | cut -f' ' -f4)

if [ $RUNNING_AFTER = $RUNNING_BEFORE ]; then
  echo "$2: Unable to run container at $(now)" >> errors.txt

fi

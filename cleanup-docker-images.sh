#!/bin/bash
set -e

# iterate over docker images with "<none>" tag, we consider these unused.
docker image ls | grep "<none>" | while read -r line; do
    image_id=$(echo "$line" | awk '{print $3}')
    echo "Removing Docker image with ID: $image_id"
    docker image rm "$image_id"
done
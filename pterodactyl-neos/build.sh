#!/bin/bash

export IMAGE_NAME="local.voxelbone.cloud/neos-pri"
#export IMAGE_NAME="ghcr.io/voxelbonecloud/pterodactyl-neos"

docker buildx build --pull -t $IMAGE_NAME .

#docker save $IMAGE_NAME | bzip2 | pv | ssh HOST_HERE docker load

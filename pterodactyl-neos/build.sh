#!/bin/bash

export IMAGE_NAME="local.voxelbone.cloud/neos-pri"

docker buildx build --pull -t $IMAGE_NAME .

#docker save $IMAGE_NAME | bzip2 | pv | ssh vb-us01-dockerbuild docker load

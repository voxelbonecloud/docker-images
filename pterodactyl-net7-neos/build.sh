#!/bin/bash

docker buildx build --pull -t voxelbonecloud/neos-net7 .

docker save voxelbonecloud/neos-net7 | bzip2 | pv | ssh vb-us01-dockerbuild docker load

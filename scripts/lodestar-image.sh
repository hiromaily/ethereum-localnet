#!/bin/bash

#mkdir tmp && cd tmp
#git clone --depth 1 https://github.com/ChainSafe/lodestar.git
cd tmp/lodestar
docker buildx build . --tag lodestar:dev --platform linux/arm64 --build-arg BUILDPLATFORM=arm64 --no-cache

#! /bin/bash

docker run \
  -p 8888:8888 \
  -v $PWD/src:/opt/src \
  -v $PWD/data:/opt/data \
  -v $PWD/artifacts:/opt/artifacts \
  --name hqm-finance-1 \
  hqm-finance
#!/bin/bash
app="docker.bananadocker"
docker build -t ${app} .
docker run -d -p 56734:80 \
  --name=${app} \
  -v $PWD:/app ${app}

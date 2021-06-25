#!/bin/bash

REPO=bambrow

cd spark-master
IMAGE=spark-master
VERSION=3.1.1-hadoop3.2
docker build -t ${REPO}/${IMAGE}:${VERSION} .
cd ..

cd spark-history-server
IMAGE=spark-history-server
VERSION=3.1.1-hadoop3.2
docker build -t ${REPO}/${IMAGE}:${VERSION} .
cd ..


#!/bin/bash
DOCKER_TAG=$(cat pyspark-notebook/tag)
echo "Building image: $DOCKER_TAG"

docker buildx build -f pyspark-notebook/Dockerfile-pyspark --platform linux/amd64 -t $DOCKER_TAG --build-arg BASE_IMAGE=jupyter/all-spark-notebook -o type=image,push=false $@ .
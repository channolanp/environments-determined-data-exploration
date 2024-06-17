#!/bin/bash
DOCKER_TAG=$(cat pyspark-notebook/tag)

docker buildx build -f pyspark-notebook/Dockerfile-pyspark \
        --platform linux/amd64 \
        --build-arg BASE_IMAGE=jupyter/all-spark-notebook \
        -t $DOCKER_TAG \
        -o type=image,push=false $@ \
        .
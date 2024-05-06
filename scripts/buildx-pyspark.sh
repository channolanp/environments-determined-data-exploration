#!/bin/bash
docker buildx build -f Dockerfile-pyspark --platform linux/amd64 --build-arg BASE_IMAGE=jupyter/all-spark-notebook -o type=image,push=false $@ .
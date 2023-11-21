#!/bin/bash

# 1. Input Docker image name
read -p "Docker image name: " $0

# 2. Input Docker image version
read -p "Docker image version: " image_version

# 3. Build Docker image
docker build -t $0 --platform=linux/arm/v7 .
docker build -t $0:v$1 --platform=linux/arm/v7 .

# 4. Login Docker Hub account
docker login -u=$2 -p=$3

# 5. Push Docker image
docker push $0
docker push $0:v$1

# 6. Logout Docker Hub account
docker logout

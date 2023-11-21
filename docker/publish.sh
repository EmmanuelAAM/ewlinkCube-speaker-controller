#!/bin/bash
# 1. Build Docker image
docker buildx build --platform=linux/arm/v7 -t ewlink-cube-speaker-control:vlatest  .

# 2. Login Docker Hub account
docker login -u=$usr -p=$psw

# 3. Push Docker image
docker push ewlink-cube-speaker-control
docker buildx build --platform=linux/arm/v7 -t ewlink-cube-speaker-control:vlatest .
docker tag ewlink-cube-speaker-control emmanuelam93/ewlink-cube-speaker-control:vlatest
docker push emmanuelam93/ewlink-cube-speaker-control:vlatest
# 4. Logout Docker Hub account
docker logout

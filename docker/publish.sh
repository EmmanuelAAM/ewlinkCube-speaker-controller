#!/bin/bash
# 1. Build Docker image
docker build --load --platform=linux/arm/v7 -t emmanuelam93/ewlink-cube-speaker-control:latest  .
# 2. Login Docker Hub account
docker login -u=$usr -p=$psw
#docker build --load --platform=linux/arm/v7 -t emmanuelam93/ewlink-cube-speaker-control:latest  .
# 3. Push Docker image
docker tag ewlink-cube-speaker-control emmanuelam93/ewlink-cube-speaker-control:latest
docker push emmanuelam93/ewlink-cube-speaker-control:latest
# 4. Logout Docker Hub account
docker logout

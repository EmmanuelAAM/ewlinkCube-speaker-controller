#!/bin/bash
# 1. Build Docker image
docker build -t $name:v$version --platform=linux/arm/v7 .

# 2. Login Docker Hub account
docker login -u=$usr -p=$psw

# 3. Push Docker image
docker push $name
docker tag $name $usr/$name:v$version
docker push $usr/$name:v$version

# 4. Logout Docker Hub account
docker logout

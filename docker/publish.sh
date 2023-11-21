#!/bin/bash
# 3. Build Docker image
docker build -t $name --platform=linux/arm/v7 .
docker build -t $name:v$version --platform=linux/arm/v7 .

# 4. Login Docker Hub account
docker login -u=$usr -p=$psw

# 5. Push Docker image
docker push $name
docker push $name:v$version

# 6. Logout Docker Hub account
docker logout

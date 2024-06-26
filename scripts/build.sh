#!/bin/bash
build_version=$0

mkdir build
npx lerna run build


cp -r ../packages/server/dist build/server

cp -r ../packages/web/dist build/public

echo "Build content: "
ls build
echo "BE content: "
ls build/server
echo "FE content: "
ls build/public
echo "Full Path:"
pwd

cp ../docker/Dockerfile build
cp ../docker/publish.sh build
cp ../docker/.dockerignore build

cat << EOF > ./build/buildinfo
Build Version: $version
Build Date: $(date '+%F %T')
EOF

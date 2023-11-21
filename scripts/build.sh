#!/bin/bash
build_version=$0

rm -rf build && mkdir build

npx lerna run build

cp -r packages/server/dist build/server

cp -r packages/web/dist build/public

cp docker/Dockerfile build
cp docker/publish.sh build
cp docker/.dockerignore build

cat << EOF > ./build/buildinfo
Build Version: $0
Build Date: $(date '+%F %T')
EOF

#!/bin/bash

npm install

# Config server
SERVER_DATA_PATH=$(pwd)/packages/server/data
mkdir -p $SERVER_DATA_PATH
mkdir -p $SERVER_DATA_PATH/audio
cat << EOF > ./packages/server/.env
ENABLE_MIDDLEWARE_LOG=1
ENABLE_MIDDLEWARE_AUTH=1
ENABLE_PRINT_BUILDINFO=0
CONFIG_CUBE_HOSTNAME=ihost.local
CONFIG_AUDIO_DATA_PATH=$SERVER_DATA_PATH
CONFIG_TOKEN_DATA_PATH=$SERVER_DATA_PATH
APP_NAME="ewlinkCube-speaker-controller"
LOG_LEVEL=debug
EOF

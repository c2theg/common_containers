#!/bin/sh
#clear
# Version: 0.0.1
# Updated: 4/24/2020
#---------------------------
# https://hub.docker.com/r/resilio/sync
#
#------ Install --------
docker pull resilio/sync:latest

#------ Setup ----------
DATA_FOLDER=/media/data/sync/
WEBUI_PORT=8888

mkdir -p $DATA_FOLDER

docker run -d --name Sync \
           -p 127.0.0.1:$WEBUI_PORT:8888 \
           -p 55555 \
           -v $DATA_FOLDER:/mnt/sync \
           --restart on-failure \
           resilio/sync

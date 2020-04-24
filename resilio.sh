#!/bin/sh
#clear
# Version: 0.0.2
# Updated: 4/24/2020
#---------------------------
# https://hub.docker.com/r/resilio/sync
#
#------ Install --------
# Run this the first time
# docker pull resilio/sync:latest

#------ Setup ----------
INSTALL_DIR=/etc/resilio/
DATA_DIR=/media/data/sync/
WEBUI_PORT=8888

mkdir -p $INSTALL_DIR
mkdir -p $DATA_DIR

docker run -d --name Sync \
           -p 0.0.0.0:$WEBUI_PORT:8888 \
           -v $INSTALL_DIR:/mnt/sync \
           -v $DATA_DIR:$DATA_DIR \
           --restart on-failure \
           resilio/sync

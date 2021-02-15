#!/bin/bash

docker run -d --name="Zoneminder" \
--net="bridge" \
--privileged="true" \
-p 86:80/tcp \
-p 8443:443/tcp \
-p 9000:9000/tcp \
-e TZ="America/New_York" \
-e SHMEM="50%" \
-e PUID="99" \
-e PGID="100" \
-e INSTALL_HOOK="0" \
-e INSTALL_FACE="0" \
-e INSTALL_TINY_YOLOV3="0" \
-e INSTALL_YOLOV3="0" \
-e INSTALL_TINY_YOLOV4="0" \
-e INSTALL_YOLOV4="0" \
-e MULTI_PORT_START="0" \
-e MULTI_PORT_END="0" \
-v "/home/baum/src/zoneminder/zoneminder/data":"/config":rw \
-v "/home/baum/src/zoneminder/zoneminder/data":"/var/cache/zoneminder":rw \
dlandon/zoneminder

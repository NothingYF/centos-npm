#!/bin/sh

REPO=nothingdocker
IMAGE_NAME=`basename $PWD`
DOCKER_NAME=${1:-demo}
docker rm -f $DOCKER_NAME
docker run --privileged \
	--name $DOCKER_NAME \
	-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
	-v /data:/data \
	-p 4873:4873 \
	$REPO/$IMAGE_NAME
#docker exec -it $DOCKER_NAME bash

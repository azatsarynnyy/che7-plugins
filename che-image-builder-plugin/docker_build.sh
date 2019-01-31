#!/bin/bash

set -e

if [ -z "$DOCKERHUB_USER" ]; then
      echo "You need to set you DockerHub username: export DOCKERHUB_USER=<yourusername>"
      exit 1
fi

if [ -z "$DOCKERHUB_PASSWORD" ]; then
      echo "You need to set you DockerHub password: export DOCKERHUB_PASSWORD=<yourpassword>"
      exit 1
fi

if [ -z "$1" ]; then
    echo "No project name provided"
    exit 1
fi

if [ -z "$2" ]; then
    echo "No project version provided"
    exit 1
fi

export PROJECT_NAME=$1
export PROJECT_DIR=/projects/${PROJECT_NAME}
export PROJECT_VERSION=$2

export BUILDAH_ISOLATION=chroot
buildah bud -t $DOCKERHUB_USER/${PROJECT_NAME}:${PROJECT_VERSION} ${PROJECT_DIR}
buildah push --creds $DOCKERHUB_USER:$DOCKERHUB_PASSWORD $DOCKERHUB_USER/${PROJECT_NAME}:${PROJECT_VERSION}

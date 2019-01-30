#!/bin/bash

if [ -z "$DOCKERHUB_USER" ]; then
      echo "You need to set you DockerHub username: export DOCKERHUB_USER=<yourusername>"
fi

if [ -z "$DOCKERHUB_PASSWORD" ]; then
      echo "You need to set you DockerHub password: export DOCKERHUB_PASSWORD=<yourpassword>"
fi

if [ -z "$1" ]; then
    echo "No project name provided"
fi

export PROJECT_NAME=$1
export PROJECT_DIR=/projects/${PROJECT_NAME}

export BUILDAH_ISOLATION=chroot
buildah bud -t $DOCKERHUB_USER/${PROJECT_NAME}:2.0.0 ${PROJECT_DIR}
buildah push --creds $DOCKERHUB_USER:$DOCKERHUB_PASSWORD $DOCKERHUB_USER/${PROJECT_NAME}:2.0.0

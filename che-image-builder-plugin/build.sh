#!/bin/sh
set -e
set -u

if [ -f che-image-builder-plugin.tar.gz ]; then
    rm che-image-builder-plugin.tar.gz
fi

cd etc
tar zcvf ../che-image-builder-plugin.tar.gz .

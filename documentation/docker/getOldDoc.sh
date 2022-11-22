#!/bin/bash

if docker pull kvalitetsit/kithugs-jonas-documentation:latest; then
    echo "Copy from old documentation image."
    docker cp $(docker create kvalitetsit/kithugs-jonas-documentation:latest):/usr/share/nginx/html target/old
fi

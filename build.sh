#!/bin/bash -ex

docker run \
    --rm \
    --init \
    --workdir /quartz/ \
    -v $(pwd)/content/:/quartz/content/ \
    -v $(pwd)/public/:/quartz/public/ \
    -v $(pwd)/quartz.config.ts:/quartz/quartz.config.ts \
    -p 8080:8080 \
    dnd:site \
    npx quartz build

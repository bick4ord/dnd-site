#!/bin/bash -ex

docker run \
    --rm \
    --init \
    --workdir /quartz/ \
    -v $(pwd)/content/:/quartz/content/ \
    -v $(pwd)/public/:/quartz/public/ \
    -v $(pwd)/deploy.yml:/quartz/.github/workflows/deploy.yml \
    -p 8080:8080 \
    dnd:site \
    npx quartz build

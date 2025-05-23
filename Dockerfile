FROM node:22-alpine

RUN apk add --no-cache git && \
    cd / && \
    git clone -b v4.4.0 --single-branch --depth=1 https://github.com/jackyzha0/quartz.git && \
    cd quartz && \
    npm ci
    # npx quartz create

    EXPOSE 8080

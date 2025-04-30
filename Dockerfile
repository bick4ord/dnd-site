FROM node:22-alpine

RUN apk add --no-cache git && \
    cd / && \
    git clone https://github.com/jackyzha0/quartz.git && \
    cd quartz && \
    git checkout v4.4.0 && \
    npm ci
    # npx quartz create

    EXPOSE 8080

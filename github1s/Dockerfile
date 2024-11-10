FROM node:23-bullseye


WORKDIR /app
RUN corepack enable \
    && git clone git@github.com:conwnet/github1s.git \
    && yarn config set registry https://registry.npmmirror.com \
    && cd github1s \
    && yarn \
    && yarn watch

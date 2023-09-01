FROM node:alpine3.18

ARG user=node
ARG group=node

RUN apk add --no-cache bash git libc6-compat

USER ${user}

WORKDIR /usr/src/cache

COPY --chown=${user}:${group} package*.json ./

RUN npm install

WORKDIR /usr/src/app

ENTRYPOINT [ "/bin/sh", "/usr/src/app/entrypoint.sh" ]
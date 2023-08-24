FROM node:alpine3.18

LABEL manteiner="Rommel Soriano"

RUN apk add --no-cache bash git zip unzip pkgconfig

WORKDIR /app

RUN apk add --update nodejs npm

RUN npm install -g npm@latest

COPY . .

ENTRYPOINT [ "tail", "-f", "/dev/null" ]
FROM node:alpine3.18

LABEL manteiner="Rommel Soriano"

RUN apk add --no-cache bash git zip unzip pkgconfig

WORKDIR /app

COPY . .

RUN npm install

CMD ["npx", "next", "dev"]
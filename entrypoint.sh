#!/bin/sh
cp -r /usr/src/cache/node_modules/. /usr/src/app/node_modules/
exec npx next dev;
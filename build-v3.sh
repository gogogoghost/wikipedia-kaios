#!/bin/sh

set -e

pnpm build

mkdir -p dist-v3

cp -r index.html dist-v3/
cp -r style dist-v3/
cp -r images dist-v3/
cp -r i18n dist-v3/

mkdir -p dist-v3/dist
cp dist/main.js dist-v3/dist/
cp manifest.webmanifest dist-v3/

cd dist-v3
zip -r wikipedia.zip *
#!/bin/bash

rm -rf ./.amplify-hosting

mkdir -p ./.amplify-hosting/compute/default

cp -r ./build ./.amplify-hosting/compute/default

mv ./.amplify-hosting/compute/default/build/client ./.amplify-hosting/static
mv ./.amplify-hosting/compute/default/build/prerendered ./.amplify-hosting/static
cp -r ./node_modules ./.amplify-hosting/compute/default/node_modules
cp -r package.json ./.amplify-hosting/compute/default

cp deploy-manifest.json ./.amplify-hosting/deploy-manifest.json
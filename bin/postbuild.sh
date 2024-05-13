#!/bin/bash

rm -rf ./.amplify-hosting

mkdir -p ./.amplify-hosting/compute

cp -r ./build ./.amplify-hosting/compute/default

cp -r ./static ./.amplify-hosting
cp -r ./node_modules ./.amplify-hosting/compute/default/node_modules
cp -r bin/package.json ./.amplify-hosting/compute/default
cp deploy-manifest.json ./.amplify-hosting/deploy-manifest.json
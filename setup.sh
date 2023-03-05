#!/usr/bin/env bash

REPO=$1

echo "MAKE APP FOLDER"
git clone $REPO app
cp env-example > ./app/.env

echo "MAKE ENV"
cp env-example >.env

echo "START DOCKER"
docker compose up -d

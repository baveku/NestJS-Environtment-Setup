#!/usr/bin/env bash
REPO=$1

echo "CLONE REPO TO APP"
git clone $REPO ../app

echo "MAKE ENV"
cp -i env-example .env
cp -i env-example ../app/env-example

echo "START DOCKER"
docker compose up -d

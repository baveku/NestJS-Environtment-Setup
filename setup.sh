#!/usr/bin/env bash
REPO=$1

echo "CLONE REPO TO APP"
git clone $REPO ../app

echo "MAKE ENV"
cp env-example >.env

echo "START DOCKER"
docker compose up -d

#!/usr/bin/env bash

echo "MAKE ENV"
cp env-example >.env

echo "START DOCKER"
docker compose up -d

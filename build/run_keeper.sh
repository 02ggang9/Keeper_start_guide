#!/bin/bash

docker build --no-cache -t keeper-homepage-app:build -f docker/app.dockerfile .
docker build --no-cache -t keeper-homepage-db:build -f docker/db.dockerfile .
docker build --no-cache -t keeper-homepage-nginx:build -f docker/nginx.dockerfile .

docker-compose up

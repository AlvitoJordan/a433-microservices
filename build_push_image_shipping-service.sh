#!/bin/bash

# Build docker image shipping-service dan tag latest
docker build -t shipping-service:latest .
echo
echo

# Mengubah nama image agar sesuai dengan format Github Packages
docker tag shipping-service:latest ghcr.io/alvitojordan/shipping-service:latest
echo
echo

# Login ke GitHub Packages
echo $GITHUB_PACKAGES_TOKEN | docker login ghcr.io -u alvitojordan --password-stdin
echo
echo

# Push image ke GitHub Packages
docker push ghcr.io/alvitojordan/shipping-service:latest
echo

#!/bin/bash

# Build docker image karsajobs dan tag latest
docker build -t karsajobs:latest .
echo
echo

# Mengubah nama image agar sesuai dengan format Github Packages
docker tag karsajobs:latest ghcr.io/alvitojordan/karsajobs:latest
echo
echo

# Login ke GitHub Packages
echo $GITHUB_PACKAGES_TOKEN | docker login ghcr.io -u alvitojordan --password-stdin
echo
echo

# Push image ke GitHub Packages
docker push ghcr.io/alvitojordan/karsajobs:latest
echo

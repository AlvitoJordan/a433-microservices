#!/bin/bash

# Build docker image karsajobs-ui dengan tag latest
docker build -t karsajobs-ui:latest .
echo
echo

# Mengubah nama image agar sesuai dengan format Github Packages 
docker tag karsajobs-ui:latest ghcr.io/alvitojordan/karsajobs-ui:latest
echo
echo

# Login ke GitHub Packages
echo $GITHUB_PACKAGES_TOKEN | docker login ghcr.io -u alvitojordan --password-stdin
echo
echo

# Push Image ke GitHub Packages
docker push ghcr.io/alvitojordan/karsajobs-ui:latest
echo

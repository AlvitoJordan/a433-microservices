#!/bin/bash

# membuat Docker image dari Dockerfile dengan nama item-app dan tag v1
docker build -t item-app:v1 .
echo
echo

# Melihat daftar image di lokal
docker images
echo
echo

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/alvitojordan/item-app:v1
echo
echo

# Login ke GitHub Packages
echo $GITHUB_PACKAGES_TOKEN | docker login ghcr.io -u alvitojordan --password-stdin
echo
echo

# Mengunggah image ke GitHub Packages
docker push ghcr.io/alvitojordan/item-app:v1
echo
echo

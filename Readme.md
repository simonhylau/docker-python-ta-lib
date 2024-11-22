# Docker image with TA-Lib

It's a python 3.12 base image with TA-Lib pre-install. I use it to save some time while working with TA-Lib.

It's the same as the one on Docker Hub.

https://hub.docker.com/repository/docker/simonhylau/python-talib

# Usage

## Build the image to docker container. 
Rund `build.bat` or `docker build -t simonhylau/python:3.12 .`

## Use the custom base image

Add below as the base image in your dockerfile.

`FROM simonhylau/python:3.12`

### Feel free to use/copy/fork
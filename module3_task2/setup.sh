#!/bin/bash

## Production Instructions

#* The production website is hosted in an Ubuntu 18.04 Docker container
#* The applications "GoHugo" and "Make" are installed with `apt-get update && apt-get install -y hugo make`.
sudo apt update
sudo apt install -y git
sudo apt install -y hugo
sudo apt update
sudo apt-get update && apt-get install make
sudo apt install -y curl
sudo curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o hugo.deb
sudo apt install ./hugo.deb

#* When running the command `make build`, there is a bunch of errors which end with the following lines:
make build
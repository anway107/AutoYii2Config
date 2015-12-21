#!/usr/bin/env bash

echo "Updating the system for packagess"
sudo apt-get update

sudo apt-get install build-essential libssl-dev
curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh
source ~/.profile


echo "Using the node version v0.12.8"
nvm install 0.12.8
nvm alias default 0.12.8

echo "Installing the ruby and compass needed for grunt build"
sudo apt-get install ruby
sudo apt-get install ruby-dev
sudo gem install compass
sudo gem install compass -v 0.12.3

echo "Installing the ruby and compass needed for grunt build"
npm install -g npm
npm install -g yo bower grunt-cli gulp

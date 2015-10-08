#!/usr/bin/env bash

# Update all packages
apt-get update
# Node.js installation
curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
sudo apt-get install --yes nodejs
# Grunt CLI. Note that this is only the invoker for the grunt task runner.
# grunt task runner should be installed by npm install in the project folder.
sudo npm install -g grunt-cli
# Install Bower
sudo npm install -g bower
# Hidden dependecy of phantomjs
sudo apt-get install --yes libfontconfig
# Install git
sudo apt-get install --yes git
# Setup swap
# First, disable and remove any previous swap file
sudo swapoff /swap
sudo rm /swap
# Create a set a new swap file
sudo fallocate -l 4G /swap
sudo chmod 600 /swap
sudo mkswap /swap
sudo swapon /swap
# Display create swap file
sudo swapon -s

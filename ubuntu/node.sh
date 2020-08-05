#!/bin/bash

echo "Installing Node"
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

echo "Check Node Installation"
node -v
npm -v

echo "Install Packages"
sudo npm install -g http-server
sudo npm install -g nodemon
sudo npm install -g yarn

echo "Npm Update Check"
sudo chown -R $USER:$(id -gn $USER) /home/saulo/.config

echo "Checking Global Packages"
npm list -g --depth 0

echo "Enable NPM Completion"
npm completion >> ~/.bashrc
source ~/.bashrc
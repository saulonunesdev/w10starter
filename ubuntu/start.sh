#!/bin/bash

read -r -p "Inform Your Git User Name: " gitwsl_username
read -r -p "Inform Your Git User Email: " gitwsl_useremail

sudo echo "Enable Sudo"

echo $gitwsl_username
echo $gitwsl_useremail

echo "Update Distro"
sudo apt-get update

echo "Installing Dependencies"
sudo apt-get install -y zip unzip elinks make g++ build-essential zlib1g-dev libssl-dev libncurses-dev libffi-dev libsqlite3-dev libreadline-dev libbz2-dev

$PWD/ubuntu/git.sh "$gitwsl_username" $gitwsl_useremail
$PWD/ubuntu/aws.sh
$PWD/ubuntu/node.sh
#$PWD/ubuntu/docker.sh

echo "Config WSL to Mount Volume"
sudo cp $PWD/ubuntu/cfg/wsl.conf /etc/wsl.conf
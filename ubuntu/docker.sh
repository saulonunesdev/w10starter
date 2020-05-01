#!/bin/bash

#echo "Uninstalling Previous Docker Version"
#sudo apt-get remove docker docker-engine docker.io containerd runc
#sudo apt-get update

echo "Installing Docker"
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

echo "Add Docker’s official GPG key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Check Key FingerPrint"
sudo apt-key fingerprint 0EBFCD88

echo "Setting Up the Stable Repository"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
echo "Install Docker CE"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
docker -v

echo "Enable local user to use Docker without SUDO"
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

echo "Connect WSL Docker to Docker Desktop"
echo "export DOCKER_HOST=tcp://localhost:2375" >> ~/.bashrc
source ~/.bashrc

echo "Testing Docker"
docker run docker/whalesay cowsay "So Far So Good!"

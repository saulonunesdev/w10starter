#!/bin/bash

echo "Enable local user to use Docker without SUDO"
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

echo "Testing Docker"
docker run docker/whalesay cowsay "So Far So Good!"
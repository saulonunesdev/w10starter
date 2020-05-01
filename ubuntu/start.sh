#!/bin/bash
echo "Update Linux"
sudo apt-get update

echo "Installing Dependencies"
sudo apt-get install -y zip unzip elinks make

echo "Add SSH Keys"
export WINHOME=$(cmd.exe /C "cd /D %USERPROFILE% && bash.exe -c pwd")
mkdir $HOME/.ssh
cp $WINHOME/.ssh/id_rsa $HOME/.ssh/
cp $WINHOME/.ssh/id_rsa.pub $HOME/.ssh/

sudo chmod 600 $HOME/.ssh/id_rsa
sudo chmod 600 $HOME/.ssh/id_rsa.pub

#node
#docker
#dcompose
#aws
#git
#bootstrap
#cypress

#eval $(ssh-agent -s)
#ssh-add 
#echo "Add Ssh on WSL Start"
#echo "eval $(ssh-agent -s)" >> ~/.bashrc
#echo "ssh-add" >> ~/.bashrc

echo "Config WSL to Mount Volume"
sudo cp cfg/wsl.conf /etc/wsl.conf
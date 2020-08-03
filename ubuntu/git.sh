#!/bin/bash

username=$1
email=$2

echo "Add SSH Keys"
export WINHOME=$(cmd.exe /C "cd /D %USERPROFILE% && bash.exe -c pwd")
mkdir $HOME/.ssh
cp $WINHOME/.ssh/id_rsa $HOME/.ssh/
cp $WINHOME/.ssh/id_rsa.pub $HOME/.ssh/

sudo chmod 600 $HOME/.ssh/id_rsa
sudo chmod 600 $HOME/.ssh/id_rsa.pub

echo "add ssh key"
eval $(ssh-agent -s)
ssh-add

echo "Config GIT"
git config --global user.name $username
git config --get user.name
git config --global user.email $email
git config --get user.email

echo "Git Config to Avoid Showing Files Change Between Windows and WSL"
git config --global core.filemode false

echo "Add Github Connection"
ssh -o StrictHostKeyChecking=no git@github.com
ssh-keyscan -H github.com >> $HOME/.ssh/known_hosts
ssh -T git@github.com

echo "Add Gitlab Connection"
ssh -o StrictHostKeyChecking=no git@gitlab.com
ssh-keyscan -H gitlab.com >> $HOME/.ssh/known_hosts
ssh -T git@gitlab.com

#eval $(ssh-agent -s)
#ssh-add 
#echo "Add Ssh on WSL Start"
#echo "eval $(ssh-agent -s)" >> ~/.bashrc
#echo "ssh-add" >> ~/.bashrc
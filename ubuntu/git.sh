#!/bin/bash

echo "Inform Your Git User Name"
read gitwsl_username

echo "Inform Your Git User Email"
read gitwsl_useremail

echo "add ssh key"
eval $(ssh-agent -s)
ssh-add

echo "Config GIT"
git config --global user.name $gitwsl_username
git config --get user.name
git config --global user.email $gitwsl_useremail
git config --get user.email

echo "Git Config to Avoid Showing Files Change Between Windows and WSL"
git config --global core.filemode false

echo "Check Gits Connection"
ssh -T git@gitlab.com
ssh -T git@github.com

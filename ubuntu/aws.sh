#!/bin/bash

echo "Installing AWS Cli"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

rm awscliv2.zip
rm -rf aws

echo "Configure AWS"
export WINHOME=$(cmd.exe /C "cd /D %USERPROFILE% && bash.exe -c pwd")
cp -R $WINHOME/.aws/ $HOME

echo "Testing AWS"
aws --version
aws configure list
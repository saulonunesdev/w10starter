#!/bin/bash

#echo "Install AwS EBCli Dependencies"
#sudo apt-get install -y build-essential zlib1g-dev libssl-dev libncurses-dev libffi-dev libsqlite3-dev libreadline-dev libbz2-dev

echo "Cloning EBCli Repo"
git clone git@github.com:aws/aws-elastic-beanstalk-cli-setup.git

echo "Starting Installation"
./aws-elastic-beanstalk-cli-setup/scripts/bundled_installer

echo "Cleaning "
rm -rf aws-elastic-beanstalk-cli-setup/

echo "Adding EBCli to Path"
echo 'export PATH="$HOME/.ebcli-virtual-env/executables:$PATH"' >> ~/.bash_profile && source ~/.bash_profile
source $HOME/.bashrc
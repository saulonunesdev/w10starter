#!/bin/bash

echo "Installing Cypress Dependencies"
sudo apt-get install -y libgtk2.0-0 libgtk-3-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb

echo "Install Cypress Globally"
sudo npm install -g cypress

echo "Configuring Bash"
echo "export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0" >> ~/.bashrc
echo "export DISPLAY=localhost:0.0" >> ~/.bashrc
echo "sudo /etc/init.d/dbus start &> /dev/null" >> ~/.bashrc
echo "$USER ALL = (root) NOPASSWD: /etc/init.d/dbus" | (sudo su -c 'EDITOR="tee" visudo -f /etc/sudoers.d/dbus')
source ~/.bashrc

export DISPLAY=127.0.0.1:0.0
192.168.15.1:0.0

export DISPLAY=172.17.231.33:0.0


export DISPLAY=192.168.15.11:0.0

export DISPLAY=127.0.0.1:0.0

172.17.231.33

 192.168.56.1
 
 export DISPLAY=192.168.56.1:0.0
 
 
 
#echo "Dependencies for Node"

echo "Installing NVM"
sudo wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

echo "Refresh Profile"
source $HOME/.bashrc

echo "Installing Node V12.18.3"
nvm install v12.18.3

echo "Checking Node Installation"
nvm current
node --version
npm --version

echo "Install Packages"
npm install -g http-server
npm install -g nodemon
npm install -g yarn

echo "Checking Global Packages"
npm list -g --depth 0

#echo "Enable NPM Completion"
#npm completion >> ~/.bashrc
#source ~/.bashrc
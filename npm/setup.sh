#!/bin/bash

echo "Installing NPM dependencies"

echo "- Installing Express"
sudo npm install -g express

echo " - Installing Dev Tools"
sudo npm install -g grunt grunt-cli bower

echo " - Installing Forever"
sudo npm install -g forever

# echo " - Installing MEAN.io"
# sudo npm install -g mean-cli

# echo " - Installing IonicFramework"
# sudo npm install -g cordova ionic

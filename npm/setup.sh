#!/bin/bash

echo "Installing NPM dependencies"

echo " - Installing Dev Tools"
sudo npm install -g grunt grunt-cli bower

echo " - Installing MEAN.io"
sudo npm install -g mean-cli

echo " - Installing IonicFramework"
sudo npm install -g cordova ionic
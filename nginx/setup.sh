#!/bin/bash

echo "Configuring NGINX"

sudo rm /etc/nginx/sites-available/default

sudo cp /home/vagrant/project/vagrant/nginx/config/default /etc/nginx/sites-available/default > /dev/null

echo "Enabling configuration and restarting NGINX"

sudo rm /etc/nginx/sites-enabled/default

# sudo ln -s /home/vagrant/project/vagrant/nginx/config/default /etc/nginx/sites-enabled/

sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

# kill whatever is using port 80 - a hack for now. needs debugging
sudo fuser -k 80/tcp

sudo service nginx restart
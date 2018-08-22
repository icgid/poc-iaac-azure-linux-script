#!/bin/bash

# Donwload wordpress from wordpress.org, and copy it to /opt/wordpress
sudo wget https://wordpress.org/latest.tar.gz
sudo tar -xvzf latest.tar.gz
sudo mkdir /opt/www
sudo cp -R wordpress/* /opt/www/

# Install nginx
sudo apt-get update
sudo apt-get install -y nginx
sudo service nginx start
sudo touch /etc/nginx/sites-available/default
sudo wget https://raw.githubusercontent.com/icgid/poc-iac-azure-linux-script/master/configs/nginx/default
sudo cp default /etc/nginx/sites-available/

# Install dotnet core
wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-2.1.4 -y
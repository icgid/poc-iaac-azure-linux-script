#!/bin/bash

sudo apt-get update

# Donwload wordpress from wordpress.org, and copy it to /opt/wordpress
sudo wget https://wordpress.org/latest.tar.gz
sudo tar -xvzf latest.tar.gz
sudo mkdir -p /var/wordpress/html
sudo cp -R wordpress/* /var/wordpress/html/
sudo chown -R www-data:www-data /var/wordpress/html/

# Install nginx
sudo apt-get install -y nginx
sudo apt-get install -y php-fpm php-mysql
sudo sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g" /etc/php/7.0/fpm/php.ini
sudo service nginx start
sudo systemctl restart php7.0-fpm
sudo wget https://raw.githubusercontent.com/icgid/poc-iac-azure-linux-script/master/configs/nginx/wordpress
sudo cp wordpress /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/wordpress /etc/nginx/sites-enabled/
sudo systemctl reload nginx

# Install dotnet core
#wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb
#sudo dpkg -i packages-microsoft-prod.deb
#sudo apt-get install apt-transport-https
#sudo apt-get update
#sudo apt-get install dotnet-sdk-2.1.4 -y
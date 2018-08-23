#!/bin/bash

sudo apt-get update

# Configure mysql-server
export DEBIAN_FRONTEND="noninteractive"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $1"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $1"
sudo apt-get install -y mysql-server

# Create wordpress database
sudo wget https://raw.githubusercontent.com/icgid/poc-iac-azure-linux-script/master/scripts/create-db.sql
sudo sed -i "s/<dbuserpassword>/$2/g" create-db.sql
sudo mysql -u"root" -p"$1" < create-db.sql

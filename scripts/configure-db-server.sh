#!/bin/bash

# Configure mysql-server
sudo apt-get update
sudo apt-get install debconf-utils
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $1"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $1"
sudo apt-get install -y mysql-server

# Create wordpress database
sudo wget https://raw.githubusercontent.com/icgid/poc-iac-azure-linux-script/master/scripts/create-db.sql
sudo sed -i "s/<userpassword>/$2/g" create-db.sql
sudo mysql -u"root" -p"$1" < create-db.sql

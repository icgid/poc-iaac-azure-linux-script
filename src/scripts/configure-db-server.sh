#!/bin/bash

sudo apt-get update

# Configure mysql-server
export DEBIAN_FRONTEND="noninteractive"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $1"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $1"
sudo apt-get install -y mysql-server
sudo sed -i "s/= 127.0.0.1/= 0.0.0.0/g" /etc/mysql/mysql.conf.d/mysqld.cnf
sudo systemctl restart mysql

# Create wordpress database
sudo wget https://raw.githubusercontent.com/icgid/poc-iaac-azure-linux-script/master/scripts/create-db.sql
sudo sed -i "s/<dbuserpassword>/$2/g" create-db.sql
sudo mysql -u"root" -p"$1" < create-db.sql

# Restore wordpress database
sudo wget https://raw.githubusercontent.com/icgid/poc-iaac-azure-linux-script/master/scripts/wordpress.demo.sql
sudo mysql -u"root" -p"$1" wordpress < wordpress.demo.sql
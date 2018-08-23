#!/bin/bash

# Configure mysql-server
sudo apt-get update
sudo apt-get install debconf-utils
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $1"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $1"
sudo apt-get install -y mysql-server

#!/bin/bash

# install dotnet core
wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo ap-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-2.1.4 -y

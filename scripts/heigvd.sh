#!/bin/bash

sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y oracle-java8-set-default

sudo apt-get install -y maven

sudo apt-get install -y apache2 git

sudo curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo curl -fsSL https://get.docker.com/ | sh
sudo usermod -aG docker vagrant

sudo docker pull httpd:2.4
sudo docker pull node:4
sudo docker pull mongo:3
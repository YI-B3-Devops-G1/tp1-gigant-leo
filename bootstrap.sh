#!/usr/bin/env bash

apt-get update
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

apt-get install -y nginx
sudo service nginx start
apt-get install -y nodejs
apt-get install -y openssh-server

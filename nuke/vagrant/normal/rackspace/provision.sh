#!/bin/bash
echo 'LC_ALL="en_US.UTF-8"' | sudo tee -a /etc/environment
sudo apt-get update
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get -y install mongodb-org
sudo apt-get -y install git-core
sudo apt-get install -y curl build-essential nodejs-legacy npm
sudo apt-get install -y build-essential nodejs-legacy npm poppler-utils imagemagick zbar-tools libpixman-1-dev libcairo2-dev libmagick++-dev
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
sudo make install
sudo mkdir /etc/redis
sudo mkdir /var/redis
sudo cp utils/redis_init_script /etc/init.d/redis_6379
sudo mkdir /var/redis/6379
sudo cp /vagrant_src/prov/6379.conf /etc/redis/6379.conf
sudo update-rc.d redis_6379 defaults
sudo /etc/init.d/redis_6379 start
cp /vagrant_src/prov/my_key /home/vagrant/.ssh/id_rsa
chmod 600 /home/vagrant/.ssh/id_rsa
sudo mkdir /opt/sstore
sudo chown vagrant:vagrant /opt/sstore
cd /opt/sstore


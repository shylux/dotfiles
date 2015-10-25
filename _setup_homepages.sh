#!/bin/sh

# install git lfs
wget https://github.com/github/git-lfs/releases/download/v1.0.0/git-lfs-linux-amd64-1.0.0.tar.gz
tar -zxvf git-lfs-linux-amd64-1.0.0.tar.gz
cd git-lfs-1.0.0
./install.sh
rm -r git-lfs-1.0.0 git-lfs-linux-amd64-1.0.0.tar.gz

# install / configure lighty
apt-get install -y lighttpd
apt-get install -y php5
apt-get install -y php5-cgi
lighty-enable-mod fastcgi 
lighty-enable-mod fastcgi-php
rm /etc/lighttpd/lighttpd.conf
cp lighttpd.conf /etc/lighttpd/lighttpd.conf

mkdir -p /var/log/lighttpd/atelierzoef.ch
mkdir -p /var/log/lighttpd/shylux.ch

git clone -b master --recursive git@github.com:shylux/homepage.git /var/www/shylux.ch
git clone -b atelierzoef git@github.com:shylux/homepage.git /var/www/atelierzoef.ch

service lighttpd force-reload

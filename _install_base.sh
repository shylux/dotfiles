#!/bin/sh
apt-get update
apt-get install -y sudo
apt-get install -y vim
apt-get install -y zsh
chsh -s "$(command -v zsh)" root
apt-get install -y screen
apt-get install -y curl

apt-get install -y git
git config --global user.email "shylux@gmail.com"
git config --global user.name "Shylux"

apt-get autoremove -y

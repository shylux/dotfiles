#!/bin/sh
useradd -m -p sa9GShSPbxXQM shylux
usermod -a -G sudo shylux
chsh -s "$(command -v zsh)" shylux

HOME=/home/shylux

# SSH keys
mkdir -p $HOME/.ssh
chown shylux:shylux $HOME/.ssh
cp shylux.authorized_keys $HOME/.ssh/authorized_keys
chmod 700 $HOME/.ssh
chmod 600 $HOME/.ssh/authorized_keys
chown shylux:shylux $HOME/.ssh $HOME/.ssh/authorized_keys
echo "Added ssh keys for shylux"

# git config
cp shylux.gitconfig $HOME/.gitconfig
chmod 644 $HOME/.gitconfig
chown shylux:shylux $HOME/.gitconfig

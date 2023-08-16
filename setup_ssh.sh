#!/bin/bash

# 
# setup and start ssh proccess
# 

# update repository
sudo apt update

# install ssh server
sudo apt install -y openssh-server

# enable correct ssh settings for firewall
sudo ufw enable
sudo ufw allow ssh

# restart ssh server
sudo systemctl restart ssh

# print connection instructions
echo "connect with one of the following commands from another device on the same network with an openssh compatible client, then sign in with the same username and password as you would locally"
echo "\tssh `whoami`@`hostname`"
echo "\tssh `whoami`@`hostname -I`"
#!/bin/sh
mkdir ~/.ssh
ssh-keygen -t rsa -b 4096 -C "$1"
touch ~/.ssh/authorized_keys
touch ~/.ssh/known_hosts
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub  
chmod 644 ~/.ssh/authorized_keys
chmod 644 ~/.ssh/known_hosts

cat ~/.ssh/id_rsa.pub  

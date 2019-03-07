#!/bin/sh

echo "Setup ~/.ssh? [y/n] \c"
read ANS
if [ $ANS = 'y' -o $ANS = 'yes' ]; then
  echo "Setting .ssh ... \c"

  mkdir ~/.ssh
  ssh-keygen -t rsa -b 4096 -C "$1"
  touch ~/.ssh/authorized_keys
  touch ~/.ssh/known_hosts
  chmod 700 ~/.ssh
  chmod 600 ~/.ssh/id_rsa
  chmod 644 ~/.ssh/id_rsa.pub  
  chmod 644 ~/.ssh/authorized_keys
  chmod 644 ~/.ssh/known_hosts
  
  echo "Done."
  cat ~/.ssh/id_rsa.pub  
fi

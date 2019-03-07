#!/bin/bash

# bashrc
echo "Setup ~/.bashrc? [y/n] \c"
read ANS
if [ $ANS = 'y' -o $ANS = 'yes' ]; then
  echo "Setting .bashrc ... \c"
  echo "source ~/.dotfiles/bash/bashrc" >> ~/.bashrc
  echo "Done."
fi

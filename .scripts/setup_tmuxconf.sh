#!/bin/bash

# tmux.conf
echo "Setup ~/.tmux.conf? [y/n] \c"
read ANS
if [ $ANS = 'y' -o $ANS = 'yes' ]; then
  echo "Setting .tmux.conf ... "
  ln -Fis ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
  echo "Done."
fi

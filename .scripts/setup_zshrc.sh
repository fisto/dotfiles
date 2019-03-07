#!/bin/bash

# zshrc
echo "Setup ~/.zshrc? [y/n] \c"
read ANS
if [ $ANS = 'y' -o $ANS = 'yes' ]; then
  echo "Setting .zshrc ... \c"
  echo "source ~/.dotfiles/zsh/zshrc" >> ~/.zshrc
  echo "Done."
fi

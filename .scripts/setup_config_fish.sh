#!/bin/bash

# .config/fish
echo "Setup ~/.config/fish ? [y/n] \c"
read ANS
if [ $ANS = 'y' -o $ANS = 'yes' ]; then
  echo "Setting .config/fish ... "
  ln -Fis ~/.dotfiles/fish ~/.config
  echo "Done."
fi

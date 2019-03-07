#!/bin/bash

# .config/karabiner/karabiner.json
echo "Setup ~/.config/karabiner/karabiner.json ? [y/n] \c"
read ANS
if [ $ANS = 'y' -o $ANS = 'yes' ]; then
  echo "Setting .config/karabiner/karabiner.json ... "
  ln -Fis ~/.dotfiles/karabiner/karabiner.json ~/.config/karabiner
  echo "Done."
fi

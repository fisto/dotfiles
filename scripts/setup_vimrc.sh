#!/bin/bash

# vimrc
echo "Setup ~/.vimrc? [y/n] \c"
read ANS
if [ $ANS = 'y' -o $ANS = 'yes' ]; then
  echo "Setting .vimrc ... \c"
  echo "source ~/.dotfiles/vim/vimrc" >> ~/.vimrc
  # NeoBundle
  git clone git://github.com/Shougo/neobundle.vim ~/.dotfiles/vim/bundle/neobundle.vim
  echo "Done."
fi

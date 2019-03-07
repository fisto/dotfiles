#!/bin/bash

# bash
echo "install .bash? [y/n] \c"
read ANS
if [ $ANS = 'y' -o $ANS = 'yes' ]; then
  echo "Installing .bash ... \c"
  echo "source ~/.dotfiles/bashrc" >> ~/.bash
  echo "done."
fi

# zshrc
echo "install .zshrc? [y/n] \c"
read ANS
if [ $ANS = 'y' -o $ANS = 'yes' ]; then
  echo "Installing .zshrc ... \c"
  echo "source ~/.dotfiles/zshrc" >> ~/.zshrc
  echo "done."
fi

# vimrc
echo "install .vimrc? [y/n] \c"
read ANS
if [ $ANS = 'y' -o $ANS = 'yes' ]; then
  echo "Installing .vimrc ... \c"
  echo "source ~/.dotfiles/vimrc" >> ~/.vimrc
  # NeoBundle
  git clone git://github.com/Shougo/neobundle.vim ~/.dotfiles/.vimrc.d/bundle/neobundle.vim
  echo "done."
fi

# git
echo "install .gitconfig? [y/n] \c"
read ANS
if [ $ANS = 'y' -o $ANS = 'yes' ]; then
  echo "git config ... "
  echo "Input user.name: \c"
  read GIT_USER_NAME
  echo "Input user.email: \c"
  read GIT_USER_EMAIL

  echo "user.name = $GIT_USER_NAME"
  echo "user.email = $GIT_USER_EMAIL"

  echo "touch ~/.gitconfig.local ... \c"
  touch ~/.gitconfig.local
  echo "[user]" >> ~/.gitconfig.local
  echo "  name = $GIT_USER_NAME" >> ~/.gitconfig.local
  echo "  email = $GIT_USER_EMAIL" >> ~/.gitconfig.local
  echo "[github]" >> ~/.gitconfig.local
  echo "  name = $GIT_USER_NAME" >> ~/.gitconfig.local
  echo "done."

  echo "Installing .gitconfig ... "
  ln -Fis ~/.dotfiles/.gitconfig ~/.gitconfig
  echo "done."

  echo "Installing .gitignore ... "
  ln -Fis ~/.dotfiles/.gitignore ~/.gitignore
  echo "done."
fi

# tmux.conf
echo "install .tmux.conf? [y/n] \c"
read ANS
if [ $ANS = 'y' -o $ANS = 'yes' ]; then
  echo "Installing .tmux.conf ... "
  ln -Fis ~/.dotfiles/tmux.conf ~/.tmux.conf
  echo "done."
fi

# Finish Message.
echo "Completed."

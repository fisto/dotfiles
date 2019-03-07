#!/bin/bash

# gitconfig
echo "Setup ~/.gitconfig? [y/n] \c"
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
  echo "Done."

  echo "Setting .gitconfig ... "
  ln -Fis ~/.dotfiles/git/gitconfig ~/.gitconfig
  echo "Done."

  echo "Setting .gitignore ... "
  ln -Fis ~/.dotfiles/git/gitignore ~/.gitignore
  echo "Done."
fi

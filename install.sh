#!/bin/sh
echo "source ~/.dotfiles/.vimrc" > ~/.vimrc
echo "source ~/.dotfiles/.zshrc" > ~/.zshrc

ln -Fis .git* $HOME

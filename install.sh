#!/bin/sh
echo "source ~/.dotfiles/.vimrc" > ~/.vimrc
echo "source ~/.dotfiles/.zshrc" > ~/.zshrc
echo "source ~/.dotfiles/.bashrc" > ~/.bashrc

ln -Fis .git* $HOME

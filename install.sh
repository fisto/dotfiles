#!/bin/sh
echo "source ~/.dotfiles/.vimrc" >> ~/.vimrc
echo "source ~/.dotfiles/.zshrc" >> ~/.zshrc
echo "source ~/.dotfiles/.bashrc" >> ~/.bashrc

ln -Fis ~/.dotfiles/.gitconfig ~/.gitconfig
ln -Fis ~/.dotfiles/.gitgitignore ~/.gitignore

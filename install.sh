#!/bin/sh
echo "source ~/.dotfiles/.vimrc" >> ~/.vimrc
echo "source ~/.dotfiles/.zshrc" >> ~/.zshrc
echo "source ~/.dotfiles/.bashrc" >> ~/.bashrc

ln -Fis ~/.dotfiles/.gitconfig ~/.gitconfig
ln -Fis ~/.dotfiles/.gitgitignore ~/.gitignore

git clone git://github.com/Shougo/neobundle.vim ~/.dotfiles/.vim.d/neobundle.vim
echo "Finished."

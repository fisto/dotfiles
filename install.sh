#!/bin/sh
echo "source ~/.dotfiles/.vimrc" >> ~/.vimrc
echo "source ~/.dotfiles/.zshrc" >> ~/.zshrc
echo "source ~/.dotfiles/.bashrc" >> ~/.bashrc

ln -Fis ~/.dotfiles/.gitconfig ~/.gitconfig
ln -Fis ~/.dotfiles/.gitgitignore ~/.gitignore

# tmux.conf
ln -Fis ~/.dotfiles/.tmux.conf ~/.tmux.conf

# NeoBundle
git clone git://github.com/Shougo/neobundle.vim ~/.dotfiles/.vim.d/neobundle.vim

# Finish Message.
echo "Finished."

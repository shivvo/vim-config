#! /bin/bash

# Install Vundle
rm -rf ~/.vim/bundle/Vundle.vim 
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install autopep8
pip3 install --user autopep8

# Initialize nvim
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim

# Copy .vimrc
cp vimrc.vimrc ~/.vimrc


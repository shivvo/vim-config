#! /bin/bash

mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim

cp vimrc.vimrc ~/.vimrc


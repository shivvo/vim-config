#! /bin/bash

mkdir ~/.vim
mkdir ~/.vim/bundle

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript

cp vimrc.vimrc ~/.vimrc


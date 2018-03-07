#! /bin/bash

mkdir ~/.vim
mkdir ~/.vim/bundle

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
curdir=`pwd`
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer --js-completer
cd $curdir

cp vimrc.vimrc ~/.vimrc


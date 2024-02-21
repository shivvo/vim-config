#! /bin/bash

# Install dependencies
sudo apt update
sudo apt upgrade
sudo apt install \
  clang \
  clang-format \
  clangd-12 \
  neovim \
  python3-pip \
  universal-ctags

# Change defaults to clang.
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-12 100
sudo update-alternatives --config cc
sudo update-alternatives --config c++

# Install vim-plug for regular Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Install vim-plug for Neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install autopep8
pip3 install --user autopep8

# Initialize nvim
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim

# Copy .vimrc
cp vimrc.vimrc ~/.vimrc

#! /bin/bash

# Install dependencies
sudo apt update
sudo apt upgrade
sudo apt install clang clang-format clangd-8 neovim python3-pip

# Change defaults to clang.
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-8 100
sudo update-alternatives --config cc
sudo update-alternatives --config c++

# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install autopep8
pip3 install --user autopep8

# Initialize nvim
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim

# Copy .vimrc
cp vimrc.vimrc ~/.vimrc


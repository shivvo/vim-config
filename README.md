# Vim/Neovim Configuration

This is my Vim/Neovim configuration, stored on GitHub for safekeeping. For now, there are no Neovim specific plugins used. 

## Operating Systems

For now, only usable on `Ubuntu` like systems.

## Plugins

I currently use the following plugins.

* Airline
* [ALE](https://github.com/dense-analysis/ale)
* CtrlP
* indentline
* NERDTree

### Plugin dendencies

The plugins have the following dependencies.

* [autopep8](https://github.com/hhatto/autopep8)
* clang
* clang-format
* clangd-8

## Install

Run `setup.sh`. When prompted for selecting compilers, select `clang` options.

Open Vim/Neovim and run `:PluginInstall`.

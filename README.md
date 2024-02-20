# Vim/Neovim Configuration

This is my Vim/Neovim configuration, stored on GitHub for safekeeping. For now, there are no Neovim specific plugins used.

## Operating Systems

For now, only usable on `Ubuntu` like systems.

## Plugins

I currently use the following plugins.

* [Airline](https://vimawesome.com/plugin/vim-airline-superman)
* [ALE](https://vimawesome.com/plugin/ale)
* [CtrlP](https://vimawesome.com/plugin/ctrlp-vim-everything-has-changed)
* [indentline](https://vimawesome.com/plugin/indentline)
* [NERDTree](https://vimawesome.com/plugin/nerdtree-red)

### Plugin dendencies

The plugins have the following dependencies.

* [autopep8](https://github.com/hhatto/autopep8)
* clang
* clang-format
* clangd-12

## Install

Run `setup.sh`. When prompted for selecting compilers, select `clang` options.

Where suggested, update your PATH variable (e.g. autopep8).

Open Vim/Neovim and run `:PluginInstall`.

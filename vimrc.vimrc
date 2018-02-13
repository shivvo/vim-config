set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" JavaScript
Plugin 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

" Soft tabs of two spaces
set expandtab
set shiftwidth=2
set softtabstop=2

" Disable auto-commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" netrw config
let g:netrw_liststyle = 3
let g:netrw_banner = 0

" JavaScript Flow syntax highlighting
let g:javascript_plugin_flow = 1


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

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

" Soft tabs of two spaces
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

" Enable line numbers
set number

" Disable auto-commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" netrw config
let g:netrw_liststyle = 3
let g:netrw_banner = 0

" JavaScript Flow syntax highlighting
let g:javascript_plugin_flow = 1

" YouCompleteMe C++ default configuration file
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" YouCompleteMe autoclose preview window
" set completeopt-=preview
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" YouCompleteMe disable diagnostic
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0

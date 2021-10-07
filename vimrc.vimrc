set nocompatible
filetype off " required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'dense-analysis/ale'
let g:ale_linters = {
\ 'cpp': ['clang++'],
\}
let g:ale_fixers = {
\ 'cpp': ['clang-format'],
\ 'python': ['autopep8', 'isort'],
\ '*': ['remove_trailing_lines', 'trim_whitespace']
\}

" All of your Plugins must be added before the following line
call vundle#end()            " required"

filetype plugin on

" Soft tabs of two spaces
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent

" Enable line numbers
set number

" netrw config
let g:netrw_liststyle = 3
let g:netrw_banner = 0

" Disable auto-commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


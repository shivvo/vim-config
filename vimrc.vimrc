set nocompatible
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


set nocompatible

" Set the runtime path for vim-plug.
call plug#begin('~/.vim/plugged')

" >>>Airline - status bar for vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='solarized'
" >>>Airline END

" >>>ALE
Plug 'w0rp/ale'
" Config for ALE linting.
let g:ale_linters = {
  \ 'cpp': ['clangd'],
  \}
" Set flags for Clang.
let cpp_compiler_opts = '-std=c++17'
let g:ale_cpp_cc_options = cpp_compiler_opts
let g:ale_cpp_gcc_options = cpp_compiler_opts
let g:ale_cpp_clang_options = cpp_compiler_opts
" Config for ALE formatter.
let g:ale_fixers = {
\ 'cpp': ['clang-format'],
\ 'python': ['autopep8', 'isort'],
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ }
" Config for clang-format.
let g:ale_cpp_clangformat_style_option = '{
  \ BasedOnStyle: Google,
  \ ColumnLimit: 80,
  \ AllowShortBlocksOnASingleLine: Always,
  \ AllowShortFunctionsOnASingleLine: All,
  \ BreakBeforeBraces: Allman
  \ }'
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
" Enable completion where available.
" This setting must be set before ALE is loaded.
"
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
" >>>ALE END

" >>>CtrlP - fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
" >>>CtrlP END

" >>>indentline - show indents
Plug 'yggdroot/indentline'
" >>>indentline END

" >>>NERDTree - file explorer
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin' " Git support
" >>>NERDTree END

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()

filetype plugin on
filetype indent off " Disable file-type-specific indentation

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

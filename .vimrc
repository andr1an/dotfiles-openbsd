" caius' vimrc

set nocompatible
syntax on

set incsearch
set hlsearch
set ignorecase
set smartcase

set modeline
set modelines=3

set backspace=indent,eol,start

colorscheme delek

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

au BufRead,BufNewFile ~/.ssh/config.d/* set ft=sshconfig
au BufRead,BufNewFile *.py set ts=4 sw=4 et sta si

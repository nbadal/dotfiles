" Make vim useful
set nocompatible
" Allow arrow keys in insert mode
set esckeys
" Make backspace work as expected
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Don't insert empty newlines at EOF
set binary
set noeol
" Encoding
set encoding=utf-8
" Use better buffers
set hidden
" Turn off sounds
set visualbell

" Show line numbers
set number
" Enable syntax highlighting
set background=dark
colorscheme gruvbox
syntax on
filetype plugin indent on
" Highlight current line
set cursorline
" Only redraw when necessary
set lazyredraw
" Highlight matching braces
set showmatch


" Number of visual spaces per \t
set tabstop=4
" Number of spaces in tab when editing
set softtabstop=4
" Tabs are spaces when editing
set expandtab

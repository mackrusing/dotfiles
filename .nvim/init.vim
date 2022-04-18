set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set mouse=v                 " middle-click paste with 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
"set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " speed up scrolling in Vim
"set spell                   " enable spell check (may need to download language package)
"set noswapfile              " disable creating swap file
"set backupdir=~/.cache/vim  " directory to store backup files.

" plugins
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
call plug#end()

" indentation
set autoindent " new lines start with same indentation as prev line
set expandtab " converts tabs to spaces
set shiftround " round indentation to multiple of shiftwidth
set shiftwidth=2 " indent with 2 spaces when shifting
set smarttab " insert tabstop spaces when pressing tab key
set tabstop=2 " indent with 2 spaces

" search
set hlsearch " enable search highlighting
set ignorecase " ignore case while searching
set incsearch " show partial matches
set smartcase " auto switch to case sensitive when uppercase is typed

" text rendering
set encoding=utf-8 " using utf-8 encoding
set linebreak " avoid wrapping line in the middle of a word
set scrolloff=1 " keep 1 line above & below cursor
set sidescrolloff=5 " keep 5 columns left & right of cursor
set wrap " enable line wrapping


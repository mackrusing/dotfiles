" plugins
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

" indentation
set tabstop=2 " indent with 2 spaces
set autoindent " new lines start with same indentation as prev line
set expandtab " converts tabs to spaces
set smarttab " insert tabstop spaces when pressing tab key
set shiftwidth=2 " indent with 2 spaces when shifting
set shiftround " round indentation to multiple of shiftwidth
set softtabstop=2 " see multiple spaces as tabstops so bs does the right thing
filetype plugin indent on " allow auto-indenting depending on file type

" search
set hlsearch " enable search highlighting
set ignorecase " ignore case while searching
set smartcase " auto switch to case sensitive when uppercase is typed
set incsearch " show partial matches

" text rendering
syntax enable " syntax highlighting
set encoding=utf-8 " using utf-8 encoding
set wrap " enable line wrapping
set linebreak " avoid wrapping line in the middle of a word
set scrolloff=1 " keep 1 line above & below cursor
set sidescrolloff=5 " keep 5 columns left & right of cursor
filetype plugin on

" ui
"set laststatus=2
set wildmenu " display command line completion as menu 
set ruler " show cursor position
set cursorline " highlight current cursorline
set number " add line numbers
set mouse=a " enable mouse 
set ttyfast " speed up scrolling
"set cc=80 " set an 80 column border

" code folding
set foldmethod=indent " fold based on indentation
set nofoldenable " disable folding by default

" misc
set nocompatible " disable compatibility with vi
set showmatch " show matching 
set clipboard=unnamedplus " use system clipboard

" colorscheme
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

" use true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'default'


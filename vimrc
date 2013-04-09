"""""""""""""""""""""""""""""""""""""""""""""""""
"
" File:     .vimrc - VIM resource file
" Author:   Tobias "Tharugrim" Patzl                    
"
" Version:  2.0 - 2013-04-09
"
" Index:
"   General:            
"   VIM_interface:      
"   Color_and_encoding: 
"   File:               
"   Text:               
"   Plugin_Config:
"   Key_mappings:
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""
" The layout of the config file is inspired by
" http://amix.dk/vim/vimrc.html 


"""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""
" Disable vi compatibility
set nocompatible

" Enable filetype plugins
filetype plugin indent on

" Auto reload the file when it is changed outside vim
set autoread

" Set the shell
set shell=/bin/zsh

" Set the leader key
let mapleader = ","
let g:mapleader = ","

" Set the grep command
set grepprg=grep\ -nH\ $*

"""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM interface
"""""""""""""""""""""""""""""""""""""""""""""""""
" Set the scrolloff visible while scrolling with j/k
set scrolloff=7

" Show the status-line in each window
set laststatus=2

" Show partial command in the status line
set showcmd

" Enable the wild menu and set the mode
set wildmenu
set wildmode=list:longest

" Ignore some files in the wildmenu
set wildignore=*.o,*~,*.pyc

" Set the behaviour of the backspace
set backspace=eol,start,indent

" Make the search case insensitive
set ignorecase

" Make the search case sensitive when uppercase is typed
set smartcase

" Highlight the search results
set hlsearch

" Hide abandoned buffers
set hidden

" Jump to the first available search result immediately
"set incsearch

" Don't redraw the window while executing macros
set lazyredraw

" Show matching brackets
set showmatch

" how long?
set matchtime=1

" Disable bells
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Show (relative) line numbers
"set relativenumber
set number

" smoother redrawing 
set ttyfast

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors & encoding
"""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax on

colorscheme ir_black
set background=dark

" Set the pop-up menu colors
hi Pmenu ctermfg=0 ctermbg=6 guibg=#444444
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff

" Fix unreadable colors in vimdiff
highlight! link DiffText MatchParen


if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Set the default encoding
set encoding=utf8

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups, undo, tags, swap
"""""""""""""""""""""""""""""""""""""""""""""""""
" Keep backups of the files
set backup
set backupdir=~/.vim/tmp/backup//,/var/tmp//,/tmp//,.
set backupskip=/tmp/*

" Save the undo history
set undofile
set undodir=~/.vim/tmp/undo//,/var/tmp//,/tmp//,.
set undolevels=1000

" Set where to save tags 
set tags=./tags;/

" Set where to save the swap file
set dir=~/.vim/tmp/swap//,/var/tmp//,/tmp//,.


"""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""
" Make spaces, not war 
set expandtab

" make tabs super smart
set smarttab

" Set how much spaces to insert on <tab>
set tabstop=4
set shiftwidth=4

" Show a bar on 85 characters
set colorcolumn=85

" Some indent settings
set autoindent
set smartindent

" Set how to do automatic formatting
set formatoptions+=qrn1

" Set how to do insert completion
set completeopt=longest,menuone

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""
" LaTex
let g:tex_flavor = "latex"
let g:Tex_CompileRule = "pdf"
let g:Tex_ViewRule_format  = "mupdf"

" clojure
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
let vimclojure#WantNailgun = 1
let vimclojure#NailgunClient = "ng"

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Edit key mappings
"""""""""""""""""""""""""""""""""""""""""""""""""
" Disable <F1> for help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Clear the search results
nnoremap <leader><space> :noh<cr>

" Set keys to toggle spell checking
map zz :setlocal spell!<cr>

" Remap spell key mappings 
map zn ]s
map zp [s



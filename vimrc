"#-------------------------------------------------------#
"# File:     .vimrc    VIM resource file
"# Author:   Tobias "Tharugrim" Patzl                    
"#-------------------------------------------------------#

"disable vi compatiblity
set nocompatible

" load Pathogen 
filetype off

execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on
syntax on

" {{{  Options
"++++++++++++++++++++++++++++++++
set completeopt=longest,menuone
set shell=/bin/zsh
set scrolloff=4
set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

set tags=./tags;/

set dir=~/.vim/tmp/swap//,/var/tmp//,/tmp//,.

" keep backups
set backup
set backupdir=~/.vim/tmp/backup//,/var/tmp//,/tmp//,.
set backupskip=/tmp/*

" keep undo files
set undofile
set undodir=~/.vim/tmp/undo//,/var/tmp//,/tmp//,.
set undolevels=1000

" search
set showmatch        
set hlsearch       
set incsearch       
set ignorecase
set gdefault
set smartcase      

" Enable the use of the mouse.
set mouse=a         

" long lines
set wrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=85

" grep command
set grepprg=grep\ -nH\ $*

" code folding
if has ('folding')
  set foldenable
  set foldmethod=marker
  set foldmarker={{{,}}}
  set foldcolumn=0
endif

" tab
set tabstop=4
set shiftwidth=4   
set softtabstop=4
set expandtab       

set showcmd

" line numbers
"set relativenumber
set number

" }}}

" {{{  LaTex
"++++++++++++++++++++++++++++++++

let g:tex_flavor = "latex"
let g:Tex_CompileRule = "pdf"
let g:Tex_ViewRule_format  = "mupdf"

" }}}

" {{{ Colors
"++++++++++++++++++++++++++++++++

set background=dark 

colorscheme hybrid 
let g:hybrid_use_Xresources = 1

if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Popup menu colors
hi Pmenu ctermfg=0 ctermbg=6 guibg=#444444
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff

" fix unreadable colors in vimdiff
highlight! link DiffText MatchParen
" }}}

" {{{ Keymapping
"++++++++++++++++++++++++++++++++
" ignore help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

let mapleader = "," 

"clear the search results
nnoremap <leader><space> :noh<cr>

"normal regex
nnoremap / /\v
vnoremap / /\v

" }}}


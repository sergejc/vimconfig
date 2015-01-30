" .vimrc File
" Maintained by: Sergej Charskij
" sergej.charskij@gmial.com

"compatibility mode
set nocompatible              


"enable mouse
set mouse=a

"enable filetypes
filetype on
filetype plugin on
filetype indent on

"enable syntax
syntax on

"write when switching between files.
set autowrite

"saves when loses focus
au FocusLost * :wa

"set map leader
let mapleader = ","
let g:mapleader = ","

"set timeout.
set timeoutlen=500

"switch between buffers without saving
set hidden

"set colorscheme
colorscheme solarized

"set background
set background=dark

"set color settings in a terminal
set t_Co=256

"tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"indents
set smartindent
set autoindent

"show lines
set number
set ls=2

"search
set incsearch
set hlsearch
set ignorecase
set smartcase

"remove search results
command! H let @/=""

"encoding
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8

"tags
set tags=./tags;

"gui
set guioptions-=T
set guioptions-=r
set go-=L

"hide mouse when typing
set mousehide

"map escape key to jj
inoremap jj <Esc>

"map space to colon
nmap <space> :

"bubble single lines (kicks butt)
nmap <C-Up> ddkP
nmap <C-Down> ddp

"bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

"window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"down and up 
nnoremap j gj
nnoremap k gk

"resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

"map code completion to , + tab
imap <leader><tab> <C-x><C-o>

"home folder
nmap <leader>hm :cd ~/ <CR>

" Auto-remove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e

"php man
set keywordprg=pman

"
" Plugins
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"vundle
Plugin 'gmarik/Vundle.vim'

"powerline
Plugin 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'fancy'

"nerdtree
Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"easymotion
Bundle 'Lokaltog/vim-easymotion'
map <Leader> <Plug>(easymotion-prefix)

"l9
Bundle 'L9'

"fuzzyfinder
Bundle 'FuzzyFinder'

"ctrlp
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/vendor/**

"emmet
Plugin 'mattn/emmet-vim'

call vundle#end()

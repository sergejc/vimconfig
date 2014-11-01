set nocompatible              

set t_Co=16

syntax on

set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8
set ls=2
set hlsearch
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set background=dark
set tags=./tags;

set guioptions-=T
set guioptions-=r
set go-=L

inoremap jj <Esc>

let mapleader = ","

colorscheme solarized

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

set keywordprg=pman

filetype off  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'

Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

Bundle 'Lokaltog/vim-easymotion'
map <Leader> <Plug>(easymotion-prefix)

Bundle 'L9'
Bundle 'FuzzyFinder'

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

call vundle#end()
filetype plugin indent on 

let g:Powerline_symbols = 'fancy'

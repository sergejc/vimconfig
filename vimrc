" .vimrc File
" Maintained by: Sergej Charskij
" sergej.charskij@gmial.com

"compatibility mode
set nocompatible

"modifiable mode
set modifiable

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

"disable bell
set visualbell

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

"highline cursorline
set cursorline

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
" inoremap jj <Esc>

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

" Open split
nmap vs :vsplit<cr>
nmap sp :split<cr>

"resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

"map code completion to , + tab
imap <leader><tab> <C-x><C-o>

"home folder
nmap <leader>hm :cd ~/ <CR>

"phpunit
nmap <leader>t :!clear && phpunit<cr>
nmap <leader>m yiw:!phpunit --filter ^R''<cr>

" Auto-remove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e

"backupdir settings
set backupdir=/tmp/ 
set directory=/tmp/

nmap :ed :edit %:p:h/

"php man
set keywordprg=pman

" Abbreviations
abbrev pft PHPUnit_Framework_TestCase
abbrev gm !php artisan genarate:model
abbrev gc !php artisan genarate:contoller
abbrev gmig !php artisan genarate:migration

" Laravel framework
nmap <leader>lr :e app/routes.php<cr>
nmap <leader>lca :e app/config/app.php<cr>81Gf(%0
nmap <leader>lcd :e app/config/database.php<cr>
nmap <leader>lc :e composer.json<cr>

" Create/edit file in the current directory
nmap :ed :edit %:p:h/

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
set laststatus=2 "Always show statusline
set encoding=utf-8
set noshowmode " Hide the default mode text (e.g -- INSERT -- below the statusline)

" Ctags
Plugin 'szw/vim-tags'

" Trailing white
Bundle 'bitc/vim-bad-whitespace'

" Vdebug
Bundle 'joonty/vdebug.git'

"nerdtree
Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.jpg$', '\.png$', '\.gif$']

" Nerd Commenter
Bundle 'The-NERD-Commenter'

" Default snippets
Bundle 'honza/vim-snippets'

"easymotion
Bundle 'Lokaltog/vim-easymotion'
map <Leader> <Plug>(easymotion-prefix)

"l9
Bundle 'L9'

"fuzzyfinder
Bundle 'FuzzyFinder'

"ctrlp
Plugin 'kien/ctrlp.vim'
nmap <D-p> :CtrlP<cr>
nmap <C-r> :CtrlPBufTag<cr>
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|svn)$',
  \ 'file': '\v\.(png|jpg|gif|svg|csv|txt)$',
  \ 'link': '',
  \ }

"emmet
Plugin 'mattn/emmet-vim'

" tmux vim
Bundle 'christoomey/vim-tmux-navigator'

" multiple cursors
" Bundle 'terryma/vim-multiple-cursors'

if has("unix")
  let s:uname = system("uname")

  if s:uname == "Darwin\n"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  else
    if has("autocmd")
        au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile0/cursor_shape ibeam"
        au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile0/cursor_shape block"
        au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile0/cursor_shape block"
    endif
  endif
endif

call vundle#end()

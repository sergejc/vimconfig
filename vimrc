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

"autocomplite
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
set completeopt=menu,preview,longest
inoremap <expr> <down> ((pumvisible())?("\<C-n>"):("\<down>"))
inoremap <expr> <up> ((pumvisible())?("\<C-p>"):("\<up>"))

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
set timeoutlen=1000 ttimeoutlen=0

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

"delete all
set backspace=indent,eol,start

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

"tab navigation
nnoremap <Tab> :tabn<CR>
nnoremap <S-Tab> :tabp<CR>
nnoremap <C-F4> :tabclose<CR>

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

"open split
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

"php man
set keywordprg=pman

let g:ackprg = 'ag --vimgrep'

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

" Toggle paster mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode


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
"Plugin 'szw/vim-tags'

"trailing white
Bundle 'bitc/vim-bad-whitespace'

" Vdebug
Bundle 'joonty/vdebug.git'

"nerdtree
Bundle 'scrooloose/nerdtree'
nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.jpg$', '\.png$', '\.gif$']

"powerline tabs
Plugin 'fweep/vim-tabber'
set tabline=%!tabber#TabLine()
set guioptions-=e

" Nerd Commenter
Bundle 'The-NERD-Commenter'

" Default snippets
Bundle 'honza/vim-snippets'

"easymotion
Bundle 'Lokaltog/vim-easymotion'
map <Leader> <Plug>(easymotion-prefix)

"l9
Bundle 'L9'

" Ack search
Plugin 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'

" Ag search
Bundle 'rking/ag.vim'

" Easytags
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

"ctrlp
Plugin 'kien/ctrlp.vim'
nmap <D-p> :CtrlP<cr>
nmap <C-r> :CtrlPBufTag<cr>
nnoremap <leader>. :CtrlPTag<cr>
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|svn)$',
  \ 'file': '\v\.(png|jpg|gif|svg|csv|txt)$',
  \ 'link': '',
  \ }

"emmet
Plugin 'mattn/emmet-vim'

"supertab
Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = '<C-n>'

" tmux vim
Bundle 'christoomey/vim-tmux-navigator'

"php autocomplite
Bundle 'shawncplus/phpcomplete.vim'

" multiple cursors
Bundle 'terryma/vim-multiple-cursors'
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_key='<F6>'
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-k>'
let g:multi_cursor_quit_key='<Esc>'

if has("unix")
  let s:uname = system("uname")

  if s:uname == "Darwin\n"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  else
    if has("autocmd")
    endif
  endif
endif

call vundle#end()

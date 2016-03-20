" .vimrc File
" Maintained by: Sergej Charskij
" sergej.charskij@gmial.com

" Compatibility mode
set nocompatible

" Modifiable mode
set modifiable

" Enable mouse
set mouse=a

" Enable filetypes
filetype on
filetype plugin on
filetype indent on

" Enable syntax
syntax on

" Disable emode
nnoremap Q <Nop>

" Autocomplite
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

set completeopt=menuone,longest
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" Write when switching between files.
set autowrite

" Disable bell
set visualbell

" Saves when loses focus
au FocusLost * :wa

" Set map leader
let mapleader = ","
let g:mapleader = ","

" Set timeout.
set timeoutlen=1000 ttimeoutlen=0

" Switch between buffers without saving
set hidden

if !has("gui_running")
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
endif

" Set colorscheme
colorscheme solarized

" Set background
set background=dark

" Highline cursorline
" set cursorline

" Set color settings in a terminal
set term=xterm-256color

" Delete all
set backspace=indent,eol,start

" Colors
"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
"highlight CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
"highlight CursorLine ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Indents
set smartindent
set autoindent

" Show lines
set number
set ls=2

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Remove search results
command! H let @/=""

" Encoding
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8

" Tags
set tags=./tags;

" Gui
set guioptions-=T
set guioptions-=r
set go-=L

" Hide mouse when typing
set mousehide

" Map space to colon
nmap <space> :

" Bubble single lines (kicks butt)
nmap <C-Up> ddkP
nmap <C-Down> ddp

" Bubble multiple lines
vmap <C-Up> xkP`[V`]
vmap <C-Down> xp`[V`]

" Window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Tab navigation
nnoremap <Tab> :tabn<CR>
nnoremap <S-Tab> :tabp<CR>
nnoremap <C-F4> :tabclose<CR>

" Disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Down and up
nnoremap j gj
nnoremap k gk

" Open split
nmap vs :vsplit<cr>
nmap sp :split<cr>

" Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap <C-b> :vertical resize -5<cr>

" Home folder
nmap <leader>hm :cd ~/ <CR>

" Phpunit
"nmap <leader>t :!clear && phpunit<cr>
"nmap <leader>m yiw:!phpunit --filter ^R''<cr>

" Auto-remove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e

" Backupdir settings
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/

" Toggle paster mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle
Plugin 'gmarik/Vundle.vim'
source $HOME/.vim/plugin_settings/nerdtree.vim
source $HOME/.vim/plugin_settings/L9.vim
source $HOME/.vim/plugin_settings/NERD_commenter.vim
source $HOME/.vim/plugin_settings/ag.vim
source $HOME/.vim/plugin_settings/clojure.vim
source $HOME/.vim/plugin_settings/ctrlp.vim
source $HOME/.vim/plugin_settings/emmet-vim.vim
source $HOME/.vim/plugin_settings/gundo.vim
source $HOME/.vim/plugin_settings/phpcomplete.vim
source $HOME/.vim/plugin_settings/powerline.vim
source $HOME/.vim/plugin_settings/supertab.vim
source $HOME/.vim/plugin_settings/syntastic.vim
source $HOME/.vim/plugin_settings/vdebug.vim
source $HOME/.vim/plugin_settings/vim-bad-whitespace.vim
source $HOME/.vim/plugin_settings/vim-easymotion.vim
source $HOME/.vim/plugin_settings/vim-easytags.vim
source $HOME/.vim/plugin_settings/vim-fugitive.vim
source $HOME/.vim/plugin_settings/vim-multiple-cursors.vim
source $HOME/.vim/plugin_settings/vim-snipmate.vim
source $HOME/.vim/plugin_settings/vim-surround.vim
source $HOME/.vim/plugin_settings/vim-tabber.vim
source $HOME/.vim/plugin_settings/vim-tag.vim

call vundle#end()

if has("unix")
  let s:uname = system("uname")

  if s:uname == "Darwin\n"
      let &t_SI = "\<Esc>[5 q"
      let &t_EI = "\<Esc>[1 q"
  else
      if has("autocmd")
          au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
          au InsertEnter,InsertChange *
                      \ if v:insertmode == 'i' |
                      \   silent execute '!echo -ne "\e[6 q"' | redraw! |
                      \ elseif v:insertmode == 'r' |
                      \   silent execute '!echo -ne "\e[4 q"' | redraw! |
                      \ endif
          au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
      endif
  endif
endif

" Last read position
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

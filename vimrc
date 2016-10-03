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

" Set color settings in a terminal
set term=xterm-256color

" Write when switching between files.
au FocusLost * :wa

" Netrw will save no history or bookmarks
let g:netrw_dirhistmax = 0

" Disable bell
set visualbell

" Saves when loses focus
au FocusLost * :wa

" Save backup
set backupcopy=yes

" Set map leader
let mapleader = ","
let g:mapleader = ","

" Set timeout.
set timeoutlen=1000 ttimeoutlen=0

" Show tab and trailing spaces
set listchars=tab:▸\ ,eol:¬
nmap <leader>l :set list!<CR>
"Invisible character colors
"highlight NonText guifg=#4a4a59
"highlight SpecialKey guifg=#4a4a59

" Switch between buffers without saving
set hidden

if !has("gui_running")
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
    let g:solarized_bold=1
    let g:solarized_italic=1
    let g:solarized_underline=1
    let g:solarized_contrast="normal"
    let g:solarized_visibility="low"
endif

" Set colorscheme
colorscheme solarized

" Set background
let profile=$ITERM_PROFILE

set background=dark
if profile == 'Light'
    set background=light
endif

" Delete all
set backspace=indent,eol,start

" Highline cursorline
set cursorline

" Colors
"highlight LineNr term=bold cterm=NONE ctermfg=red ctermbg=NONE gui=NONE guifg=yellow guibg=NONE
"highlight CursorColumn ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
highlight CursorLine ctermbg=none cterm=none gui=none
highlight CursorLineNr ctermfg=166 ctermbg=235 cterm=none


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

" Redo
nmap <leader>r :redo<CR>

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
nnoremap <leader>v :split<cr>
nnoremap <leader>h :vsplit<cr>

" Resize vsplit
nmap <leader>v :vertical resize +5<cr>
nmap <leader>b :vertical resize -5<cr>

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
source $HOME/.vim/plugin_settings/vim-airline.vim
source $HOME/.vim/plugin_settings/supertab.vim
source $HOME/.vim/plugin_settings/syntastic.vim
source $HOME/.vim/plugin_settings/vim-bad-whitespace.vim
source $HOME/.vim/plugin_settings/vim-easymotion.vim
source $HOME/.vim/plugin_settings/vim-easytags.vim
source $HOME/.vim/plugin_settings/vim-fugitive.vim
source $HOME/.vim/plugin_settings/vim-multiple-cursors.vim
source $HOME/.vim/plugin_settings/vim-snipmate.vim
source $HOME/.vim/plugin_settings/vim-surround.vim
source $HOME/.vim/plugin_settings/vim-tabber.vim
source $HOME/.vim/plugin_settings/vim-tag.vim
source $HOME/.vim/plugin_settings/vim-vinegar.vim
source $HOME/.vim/plugin_settings/greplace.vim
source $HOME/.vim/plugin_settings/vim-javascript-syntax.vim
source $HOME/.vim/plugin_settings/python-mode.vim

"source $HOME/.vim/plugin_settings/vim-phpfmt.vim
"source $HOME/.vim/plugin_settings/vdebug.vim
"source $HOME/.vim/plugin_settings/powerline.vim

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

" Notes and Tips
" zt  scroll the line with the cursor to the top
" zb  scroll the line with the cursor to the bottom
" zz  scroll the line with the cursor to the center
" z.  scroll the line with the cursor to the center of the screen
"
" ma    set mark a at current cursor location
" 'a    jump to line of mark a (first non-blank character in line)
" d'a    delete from current line to line of mark a
"
" CTRL-O and CTRL-I to jump back and forth between recent points in files

" V* select matching
" * highlights words
" shift+* jupm to the next selected
" v% select matching braces
"
" shift+Vu lowercase
" shift+VU uppercase
"
" % jump to next matching pairs
"
" wqa save and quit from all open files
"
" shift+v* select matching pairs
"
" " ctrl+v enter visual block
" c    change selection (delete and switch to insert mode)
" I    insert in front of cursor
" A    append after cursor
" r    replace every character in selection
" d    delete selection
" o    toggle cursor to opposite corner
"
" :ls    show the buffer list
" :bn    open the next buffer in the current window (cycles from the end of
" the list to the beginning).
" :bp    open the previous buffer in the current window (cycles from the start
" of the list to the end).
" CTRL-^    switch to the alternate file

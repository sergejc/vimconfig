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

" Autocomplite
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
set completeopt=menu,preview,longest
inoremap <expr> <down> ((pumvisible())?("\<C-n>"):("\<down>"))
inoremap <expr> <up> ((pumvisible())?("\<C-p>"):("\<up>"))

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

" Set colorscheme
colorscheme solarized

" Set background
set background=dark

" Highline cursorline
set cursorline

" Set color settings in a terminal
set t_Co=256

" Delete all
set backspace=indent,eol,start

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
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

" Map code completion to , + tab
imap <leader><tab> <C-x><C-o>

" Home folder
nmap <leader>hm :cd ~/ <CR>

" Phpunit
nmap <leader>t :!clear && phpunit<cr>
nmap <leader>m yiw:!phpunit --filter ^R''<cr>

" Auto-remove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e

" Backupdir settings
set backupdir=/tmp/
set directory=/tmp/

" Php man
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

" Vundle
Plugin 'gmarik/Vundle.vim'

" Powerline
Plugin 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'fancy'
set laststatus=2 "Always show statusline
set encoding=utf-8
set noshowmode " Hide the default mode text (e.g -- INSERT -- below the statusline)

" Syntax checking
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Ctags
"Plugin 'szw/vim-tags'

" Trailing white
Bundle 'bitc/vim-bad-whitespace'

" Vdebug
Bundle 'joonty/vdebug.git'

" Nerdtree
Bundle 'scrooloose/nerdtree'
nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.jpg$', '\.png$', '\.gif$']

" Powerline tabs
Plugin 'fweep/vim-tabber'
set tabline=%!tabber#TabLine()
set guioptions-=e

" Nerd Commenter
Bundle 'The-NERD-Commenter'

" Default snippets
Bundle 'honza/vim-snippets'

" Easymotion
Bundle 'Lokaltog/vim-easymotion'
map <Leader> <Plug>(easymotion-prefix)

" L9
Bundle 'L9'

" Ack search
Plugin 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'

" Ag search
Bundle 'rking/ag.vim'

" Easytags
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'


" CtrlP
Plugin 'kien/ctrlp.vim'
nmap <D-p> :CtrlP<cr>
nmap <C-r> :CtrlPBufTag<cr>
nnoremap <leader>. :CtrlPTag<cr>
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|svn)$',
  \ 'file': '\v\.(png|jpg|gif|svg|csv|txt)$',
  \ 'link': '',
  \ }
"let g:ctrlp_user_command = 'find %s -type f'

" Fast CtrlP matcher
Plugin 'FelikZ/ctrlp-py-matcher'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

" Emmet
Plugin 'mattn/emmet-vim'

" Supertab
Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = '<C-n>'

" Tmux vim
Bundle 'christoomey/vim-tmux-navigator'

" Php autocomplite
Bundle 'shawncplus/phpcomplete.vim'

" Git
Bundle 'tpope/vim-fugitive'
if exists("*fugitive#statusline")
  set statusline=%<\ %f\ %{fugitive#statusline()} ... (other stuff)
endif

" Multiple cursors
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

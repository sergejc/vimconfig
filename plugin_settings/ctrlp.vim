" CtrlP
" CtrlPClearCache or Press <F5> to purge the cache for the current directory to get new files,
" remove deleted files and apply new ignore options.
" Press <c-f> and <c-b> to cycle between modes.
" Press <c-d> to switch to filename only search instead of full path.
" Press <c-r> to switch to regexp mode.
" Use <c-j>, <c-k> or the arrow keys to navigate the result list.
" Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a
" new split.
" Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
" Use <c-y> to create a new file and its parent directories.
" Use <c-z> to mark/unmark multiple files and <c-o> to open them.

Plugin 'kien/ctrlp.vim'
let g:ctrlp_cmd='CtrlP :pwd'
nmap <C-p> :CtrlP<cr>
nmap <C-r> :CtrlPBufTag<cr>
nnoremap <leader>. :CtrlPTag<cr>'

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor\ --hidden

    let g:ctrlp_user_command = 'ag %s -i
          \ --ignore "*.txt"
          \ --ignore "*.gif"
          \ --ignore "*.png"
          \ --ignore "*.jpg"
          \ --ignore "*.csv"
          \ --ignore "*.ico"
          \ --ignore "*.md"
          \ -g ""'

    let g:ctrlp_use_caching = 0

else
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(txt)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }
endif

" Fast CtrlP matcher
Plugin 'FelikZ/ctrlp-py-matcher'
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

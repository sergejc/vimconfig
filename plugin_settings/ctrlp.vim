" CtrlP

Plugin 'kien/ctrlp.vim'
nmap <D-p> :CtrlP<cr>
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

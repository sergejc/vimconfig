" Greplace
" Search and replace across many files.
" :Gsearch to get a buffer window

Plugin 'skwp/greplace.vim'
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

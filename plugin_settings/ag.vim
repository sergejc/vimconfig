" Ag search
" Ag 'foo bar' to search for foo bar
" Ag '\\\#define foo' to search for #define foo
" e    to open file and close the quickfix window
" o    to open (same as enter)
" go   to preview file (open but maintain focus on ag.vim results)
" t    to open in new tab
" T    to open in new tab silently
" h    to open in horizontal split
" H    to open in horizontal split silently
" v    to open in vertical split
" gv   to open in vertical split silently
" q    to close the quickfix window

Plugin 'rking/ag.vim'
let g:ag_working_path_mode="r"
let g:ackprg = 'ag --vimgrep'

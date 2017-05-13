" Powerline

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
let g:Powerline_symbols = 'fancy'
set laststatus=2 "Always show statusline
set encoding=utf-8
if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Inconsolata\ for\ Powerline:h15
    endif
endif
"set noshowmode " Hide the default mode text (e.g -- INSERT -- below the statusline)

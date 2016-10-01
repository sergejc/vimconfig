" Undo

Plugin 'sjl/gundo.vim'
set undodir=~/.vim/tmp/undo/
set history=100
set undolevels=100
let g:gundo_width = 50
let g:gundo_preview_bottom = 30
let g:gundo_prefer_python3 = 1
nnoremap <leader>g :GundoToggle<CR>

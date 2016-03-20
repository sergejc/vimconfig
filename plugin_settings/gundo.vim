" Undo

Plugin 'sjl/gundo.vim'
set undodir=~/.vim/tmp/undo/
set history=100
set undolevels=100
let g:gundo_width = 50
let g:gundo_preview_bottom = 30
nnoremap <leader>g :GundoToggle<CR>

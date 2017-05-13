Plugin 'arnaud-lb/vim-php-namespace'

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction

autocmd FileType php inoremap <Leader>nu <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>nu :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction

autocmd FileType php inoremap <Leader>ne <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>ne :call PhpExpandClass()<CR>

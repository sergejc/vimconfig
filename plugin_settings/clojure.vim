" Clojure
" :Eval (+ 1 1)
" %Eval all file
" 1,3Eval run line 1 to line 3
" :Doc map 'see the documentation'
" :Source map 'command to show the source for a function'
" cqq prepopulates the command-line window with the expression under the cursor
" cqc gives you a blank line in insert mode
" cpp evaluates a given motion under the cursor
" K is mapped to look up the symbol under the cursor with doc
" [d is mapped to look up the symbol under the cursor with source
" gf, everybody's favorite 'go to file' command, works on namespaces

Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
au Filetype clojure nmap <c-c><c-k> :Require<cr>

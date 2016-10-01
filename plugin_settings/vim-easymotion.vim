" Easymotion

Plugin 'Lokaltog/vim-easymotion'
let g:EasyMotion_smartcase = 1

"hi EasyMotionTarget ctermbg=none ctermfg=red
"hi EasyMotionTarget2First ctermbg=none ctermfg=red
"hi EasyMotionTarget2Second ctermbg=none ctermfg=red

"hi link EasyMotionTarget Search
hi link EasyMotionTarget2First StorageClass
hi link EasyMotionTarget2Second StorageClass
"hi link EasyMotionShade Comment

map <Leader> <Plug>(easymotion-prefix)

" word motion
map <Leader>w <Plug>(easymotion-bd-w)

" lines motion
map <leader>L <Plug>(easymotion-bd-jk)

" search
nmap <leader>s <Plug>(easymotion-bd-f2)
nmap <leader>f <Plug>(easymotion-bd-f)

" line motions
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)

" line downward
map <Leader>j <Plug>(easymotion-j)

" line upward
map <Leader>k <Plug>(easymotion-k)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'

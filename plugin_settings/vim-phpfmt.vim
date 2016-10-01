"Default mapping is <leader>pcf (formats a file) and <leader>pcd (formats the whole directory of the file).

Plugin 'dericofilho/vim-phpfmt'


let g:phpfmt_on_save = get(g:, 'phpfmt_on_save', 1) " format on save (autocmd)
let g:phpfmt_php_path = "php"               " Path to PHP
let g:phpfmt_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
"let g:phpfmt_prepasses_list = "AutoPreincrement,JointToImplode"
"let g:phpfmt_passes_list = "ReturnNull"
"let g:phpfmt_indent_with_space = 4         " use spaces instead of tabs for indentation
"let g:phpfmt_enable_auto_align = 1         " Enable auto align of = and =>
"let g:phpfmt_visibility_order = 1          " Fixes visibiliy order for method in classes - PSR-2 4.2
"let g:smart_linebreak_after_curly = 1      " Convert multistatement blocks into multiline blocks

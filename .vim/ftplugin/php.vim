" You might also find this useful
let php_sql_query=1
let php_htmlInStrings=1
" let g:php_folding=1
" set foldmethod=syntax

set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB

let g:syntastic_php_phpcs_args='--standard=PSR2'
let g:syntastic_php_checkers = ['php', 'phpmd', 'phpcs']
"php namespaces config
inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
noremap <Leader>u :call PhpInsertUse()<CR>

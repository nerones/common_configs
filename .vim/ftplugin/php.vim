" You might also find this useful
let php_sql_query=1
let php_htmlInStrings=1
" let g:php_folding=1
" set foldmethod=syntax

set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB

setlocal omnifunc=phpactor#Complete

let g:syntastic_php_phpcs_args='--standard=PSR2'
let g:syntastic_php_checkers = ['php', 'phpmd', 'phpcs']
"php namespaces config
inoremap <Leader>u <C-O>:call PhpInsertUse()<CR>
"noremap <Leader>u :call PhpInsertUse()<CR>

" Include use statement
nmap <Leader>u :call phpactor#UseAdd()<CR>

" Invoke the context menu
nmap <Leader>mm :call phpactor#ContextMenu()<CR>

" Goto definition of class or class member under the cursor
nmap <Leader>o :call phpactor#GotoDefinition()<CR>

" Transform the classes in the current file
nmap <Leader>tt :call phpactor#Transform()<CR>

" Generate a new class (replacing the current file)
nmap <Leader>nc :call phpactor#ClassNew()<CR>

" Extract method from selection
vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>

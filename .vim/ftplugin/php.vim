" You might also find this useful
let php_sql_query=1
let php_htmlInStrings=1
" let g:php_folding=1
" set foldmethod=syntax

set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB

setlocal omnifunc=phpactor#Complete

" let g:ale_php_phpmd_ruleset = 'codesize,controversial,design,naming,unusedcode'

noremap <leader>t :!vendor/bin/phpunit %<cr>

"augroup PhpactorMappings
  "au!
  nmap <buffer> <Leader>u :PhpactorImportClass<CR>
  nmap <buffer> <Leader>e :PhpactorClassExpand<CR>
  nmap <buffer> <Leader>ua :PhpactorImportMissingClasses<CR>
  nmap <buffer> <Leader>mm :PhpactorContextMenu<CR>
  nmap <buffer> <Leader>nn :PhpactorNavigate<CR>
  nmap <buffer> <Leader>o :PhpactorGotoDefinition<CR>
  nmap <buffer> <Leader>Oh :PhpactorGotoDefinitionHsplit<CR>
  nmap <buffer> <Leader>Ov :PhpactorGotoDefinitionVsplit<CR>
  nmap <buffer> <Leader>Ot :PhpactorGotoDefinitionTab<CR>
  nmap <buffer> <Leader>K :PhpactorHover<CR>
  nmap <buffer> <Leader>tt :PhpactorTransform<CR>
  nmap <buffer> <Leader>nc :PhpactorClassNew<CR>
  nmap <buffer> <Leader>ci :PhpactorClassInflect<CR>
  nmap <buffer> <Leader>fr :PhpactorFindReferences<CR>
  nmap <buffer> <Leader>mf :PhpactorMoveFile<CR>
  nmap <buffer> <Leader>cf :PhpactorCopyFile<CR>
  nmap <buffer> <silent> <Leader>ee :PhpactorExtractExpression<CR>
  vmap <buffer> <silent> <Leader>ee :<C-u>PhpactorExtractExpression<CR>
  vmap <buffer> <silent> <Leader>em :<C-u>PhpactorExtractMethod<CR>

  nmap <buffer> <Leader>ga :PhpactorGenerateAccessor<CR>
  nmap <buffer> <Leader>cm :PhpactorContextMenu<CR>
"augroup END
"

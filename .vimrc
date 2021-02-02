" put this line first in ~/.vimrc
set nocompatible | filetype indent plugin on | syn on

if has("syntax")
  syntax on
  set synmaxcol=170
endif

fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'
  " most used options you may want to use:
  " let c.log_to_buf = 1
  " let c.auto_install = 0
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
        \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif
  call vam#ActivateAddons([], {'auto_install' : 0})
endfun

call SetupVAM()
VAMActivate vim-snippets
VAMActivate snipmate
VAMActivate nerdtree-execute
VAMActivate Emmet
VAMActivate surround
VAMActivate MatchTag
VAMActivate fugitive
VAMActivate The_NERD_Commenter
VAMActivate apprentice
VAMActivate github:ctrlpvim/ctrlp.vim
VAMActivate gruvbox
VAMActivate unimpaired
VAMActivate vividchalk
VAMActivate seoul256
VAMActivate github:majutsushi/tagbar
VAMActivate github:jwalton512/vim-blade
VAMActivate github:junegunn/gv.vim
VAMActivate github:mxw/vim-jsx
VAMActivate github:posva/vim-vue
VAMActivate github:chriskempson/base16-vim
VAMActivate github:phpactor/phpactor
VAMActivate github:pangloss/vim-javascript
VAMActivate github:dense-analysis/ale
VAMActivate github:neoclide/coc.nvim

" use <c-x><c-p> to complete plugin names

" Change the mapleader from \ to ,
let mapleader=","
let maplocalleader="\\"

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set termguicolors
set bg=dark
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = 'medium'
colorscheme base16-darktooth
set spelllang=es
set nocursorline
set nocursorcolumn
set ttimeoutlen=50
set ttyfast
set lazyredraw
" set tabstop=4       " The width of a TAB is set to 4.
" Still it is a \t. It is just that
" Vim will interpret it to be having
" a width of 4.

set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab
set autoindent
set smartindent
set pastetoggle=<F2>            " when in insert mode, press <F2> to go to
"    paste mode, where you can paste mass data
"    that won't be autoindented

set relativenumber
set nu
" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

set omnifunc=syntaxcomplete#Complete
set nowrap
set hlsearch
" filetype plugin on
" au FileType php set omnifunc=phpcomplete#CompletePHP

" Snippets variables
let g:snips_author='Nelson Efrain A. Cruz'
let g:author='Nelson Efrain A. Cruz'
let g:snips_email='neac03@gmail.com'
let g:email='neac03@gmail.com'
let g:snips_github='https://github.com/nerones'
let g:github='https://github.com/nerones'

let g:snipMate = { 'snippet_version' : 1 }

set wildmode=longest:full
set wildmenu
set incsearch
set laststatus=2
"let g:airline#extensions#branch#enabled = 1
"let g:airline_left_sep=''
"let g:airline_right_sep=''
"" let g:airline_powerline_fonts = 0
"let g:airline_symbols_ascii = 1

" set foldmethod=syntax
" set foldlevelstart=99           " start out with everything unfolded

" NERDTree settings {{{
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>m :NERDTreeClose<CR>:NERDTreeFind<CR>
nnoremap <leader>N :NERDTreeClose<CR>

" Show hidden files, too
let NERDTreeShowHidden=1

" Quit on opening files from the tree
let NERDTreeQuitOnOpen=0

" Highlight the selected entry in the tree
let NERDTreeHighlightCursorline=1

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
      \ '\.o$', '\.so$', '\.egg$', '^\.git$', '__pycache__', '\.DS_Store' ]

" }}}

" Keep undo history across sessions by storing it in a file
if !isdirectory($HOME."/.vim/undo-dir")
  call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir/
set undofile

let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {'dir': '\v[\/]\.?(node_modules|vendor|.cache|git|android\/.gradle|android\/app\/build)$'}

" Agrega el comando :Todo para ver los todo|fixme
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw

" neomake settings {{{
"autocmd! BufWritePost * Neomake
" call neomake#configure#automake('rw', 1000)
" let g:neomake_php_phpcs_args_standard = 'PSR2'
" let g:neomake_verbose = 3
"let g:neomake_php_phpcs_args_standard = 'vendor/nerones/codeigniter-phpcs/CodeIgniter/'
" }}}
let g:ale_completion_enabled = 0
let g:ale_php_phpstan_executable = 'vendor/bin/phpstan'

"for tagbar
nnoremap <silent> <Leader>b :TagbarToggle<CR>
let g:mustache_abbreviations = 1

let g:local_vimrc_options = {}
let g:local_vimrc_options.whitelist = ['/home/nelson/workspace/']


tnoremap <leader>n <C-\><C-n>

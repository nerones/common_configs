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
VAMActivate matchit.zip vim-snippets snipmate nerdtree-execute Emmet surround MatchTag vim-airline fugitive vim-less%4892 vim-php-namespace phpcomplete The_NERD_Commenter rails apprentice
VAMActivate ctrlp gruvbox unimpaired vividchalk seoul256
VAMActivate github:neomake/neomake github:majutsushi/tagbar
VAMActivate github:jwalton512/vim-blade Gundo github:junegunn/gv.vim
VAMActivate github:vim-airline/vim-airline-themes

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
colorscheme gruvbox
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

set wildmode=longest:full
set wildmenu
set incsearch
set laststatus=2
let g:airline#extensions#branch#enabled = 1
let g:airline_left_sep=''
let g:airline_right_sep=''

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

" Agrega el comando :Todo para ver los todo|fixme
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw

" neomake settings {{{
autocmd! BufWritePost * Neomake
let g:neomake_php_phpcs_args_standard = 'PSR2'
" }}}

"for tagbar
nnoremap <silent> <Leader>b :TagbarToggle<CR>


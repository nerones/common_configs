" put this line first in ~/.vimrc
set nocompatible | filetype indent plugin on | syn on

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
VAMActivate matchit.zip vim-addon-commenting vim-snippets snipmate nerdtree-execute FuzzyFinder vim-gitgutter Emmet surround MatchTag vim-airline
" use <c-x><c-p> to complete plugin names

set t_Co=256
set bg=dark
colorscheme jellybeans
set spelllang=es
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,f :FufCoverageFile<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>

set omnifunc=syntaxcomplete#Complete
set nowrap
set hlsearch
" filetype plugin on
" au FileType php set omnifunc=phpcomplete#CompletePHP

" You might also find this useful
let php_sql_query=1
let php_htmlInStrings=1

" Snippets variables
let g:snips_author='Nelson Efrain A. Cruz'
let g:author='Nelson Efrain A. Cruz'
let g:snips_email='neac03@gmail.com'
let g:email='neac03@gmail.com'
let g:snips_github='https://github.com/nerones'
let g:github='https://github.com/nerones'

set wildmode=longest:full
set wildmenu

let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_enable_branch = 1

" put this line first in ~/.vimrc
" set nocompatible | filetype indent plugin on | syn on

set termguicolors
set bg=dark
set spelllang=en
set nocursorline
set nocursorcolumn
set ttimeoutlen=50
set ttyfast
set lazyredraw
set wildmode=longest:full
set wildmenu
set laststatus=2
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
set nowrap

set hlsearch
set incsearch
set ignorecase
set smartcase
set diffopt +=iwhite
set mouse=

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/plugged')

" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
"Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
" Plug 'tpope/vim-surround'
Plug 'gregsexton/MatchTag'
Plug 'tpope/vim-fugitive'
" Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jwalton512/vim-blade'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'posva/vim-vue'
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
Plug 'pangloss/vim-javascript'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" Plug 'chriskempson/base16-vim'
" Plug 'morhetz/gruvbox'
" Plug 'romainl/Apprentice'
Plug 'folke/tokyonight.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
"Plug 'tpope/vim-vividchalk'
"Plug 'junegunn/seoul256.vim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

Plug 'npxbr/glow.nvim', {'do': ':GlowInstall', 'branch': 'main'}

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

Plug 'github/copilot.vim'
Plug 'lewis6991/gitsigns.nvim'

call plug#end()

" Change the mapleader from \ to ,
let mapleader=","
let maplocalleader="\\"

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

set omnifunc=syntaxcomplete#Complete

" Snippets variables
let g:snips_author='Nelson Efrain A. Cruz'
let g:author='Nelson Efrain A. Cruz'
let g:snips_email='neac03@gmail.com'
let g:email='neac03@gmail.com'
let g:snips_github='https://github.com/nerones'
let g:github='https://github.com/nerones'

" let g:snipMate = { 'snippet_version' : 0 }

" NvimTree settings {{{
nnoremap <leader>n :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>N :NvimTreeClose<CR>
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
let g:ctrlp_working_path_mode = 'a'

" Agrega el comando :Todo para ver los todo|fixme
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw

let g:ale_completion_enabled = 0
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" let g:ale_php_phpstan_executable = 'vendor/bin/phpstan'
let g:ale_disable_lsp = 1
let g:ale_php_phpcbf_standard='PSR2'
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'php': ['phpcbf', 'php_cs_fixer', 'remove_trailing_lines', 'trim_whitespace'],
  \ 'javascript': ['eslint'],
  \}

" Disable linting for all minified JS files.
let g:ale_pattern_options = {
\  '\.min.js$': {'ale_enabled': 0},
\  'js/app.js$': {'ale_enabled': 0},
\}

"for tagbar
"nnoremap <silent> <Leader>b :TagbarToggle<CR>
let g:mustache_abbreviations = 1

tnoremap <leader>n <C-\><C-n>

let g:coc_global_extensions = ['coc-html', 'coc-emmet', 'coc-yaml', 'coc-vetur', 'coc-tsserver', 'coc-phpls', 'coc-json', 'coc-css', 'coc-angular', 'coc-html-css-support', 'coc-snippets']

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Coc snippets configs
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
" " remap for complete to use tab and <cr>
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1):
"       \ <SID>check_back_space() ? "\<Tab>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" inoremap <silent><expr> <c-space> coc#refresh()
"
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackSpace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'


hi CocSearch ctermfg=12 guifg=#18A3FF
hi CocMenuSel ctermbg=109 guibg=#13354A
"" End Coc snippets configs

" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua require('nvim')

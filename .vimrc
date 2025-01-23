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
set tabstop=2
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

Plug 'mattn/emmet-vim'
Plug 'gregsexton/MatchTag'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'jwalton512/vim-blade'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'posva/vim-vue'
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'folke/trouble.nvim'
Plug 'mfussenegger/nvim-lint'
Plug 'stevearc/conform.nvim'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'

Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'}
Plug 'saadparwaiz1/cmp_luasnip'

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
" Plug 'fannheyward/telescope-coc.nvim'
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

" Snippets variables
let g:snips_author='Nelson Efrain A. Cruz'
let g:author='Nelson Efrain A. Cruz'
let g:snips_email='neac03@gmail.com'
let g:email='neac03@gmail.com'
let g:snips_github='https://github.com/nerones'
let g:github='https://github.com/nerones'

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

" Agrega el comando :Todo para ver los todo|fixme
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw

let g:mustache_abbreviations = 1

tnoremap <leader>n <C-\><C-n>

lua require('nvim')

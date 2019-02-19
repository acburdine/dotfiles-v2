call plug#begin('~/.config/nvim/plugged')
" Theme-related plugins
Plug 'fenetikm/falcon'
Plug 'itchyny/lightline.vim'

" Linting
Plug 'w0rp/ale'

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" File Explorer
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'jiangmiao/auto-pairs'
Plug 'nathanaelkane/vim-indent-guides'

" Language Plugins
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'hashivim/vim-terraform'
Plug 'pangloss/vim-javascript'

" Autocomplete
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make' }

call plug#end()

" Files and such
filetype plugin on
filetype indent on

set autoread
set nobackup
set nowb
set noswapfile

set encoding=utf8

" Theme/Display Configuration
syntax on
colorscheme falcon
set termguicolors
set noshowmode
set noruler
set noshowcmd

let g:falcon_lightline = 1
let g:lightline = {
  \ 'colorscheme': 'falcon',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
  \   'right': [ [ 'filetype' ] ]
  \ },
  \ 'inactive': {
  \   'left': [['filename']],
  \   'right': [['filetype']]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head'
  \ },
  \ }

" Open new windows to the right/below
set splitright
set splitbelow

" Use system clipboard
set clipboard=unnamed

" NerdTree Configuration
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Key Mapping things
let mapleader = ","

" Speedy window switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nmap <leader>so :source ~/.config/nvim/init.vim<cr>
nmap <leader>w :w<cr>

" Autocomplete Settings
set updatetime=250
set completeopt+=noinsert
set completeopt+=noselect
set completeopt-=preview

" Path to python interpreter for neovim
let g:python3_host_prog = '/usr/local/bin/python3'
" Skip the check of neovim module
let g:python3_host_skip_check = 1

let g:deoplete#enable_at_startup = 1



" Go settings
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_fmt_command = "goimports"
let g:go_gocode_autobuild = 0 "disable vim-go autocompletion
let g:go_addtags_transform = "camelcase"
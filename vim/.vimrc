inoremap jk <ESC>
set nocompatible              " be iMproved, required
let mapleader = ","

set guifont=MesloLGS\ NF:h15

syntax on " highlight syntax
set number " show line numbers
set noswapfile " disable the swapfile
set hlsearch " highlight all results
set ignorecase " ignore case in search
set incsearch " show search results as you type

"Spell check shortcuts
set spell spelllang=en_us
nnoremap <leader>f 1z=
nnoremap <leader>s :set spell!<CR>
vnoremap . :norm.<CR>

" Delete the Ctrl-M characters from the end of files
":%s/s+$//

filetype plugin on

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-surround'

Plug 'scrooloose/nerdtree'

Plug 'scrooloose/syntastic'

Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-rails'

Plug 'easymotion/vim-easymotion'

Plug 'ntpeters/vim-better-whitespace'

Plug 'mileszs/ack.vim'

Plug 'vim-ruby/vim-ruby'

Plug 'NLKNguyen/papercolor-theme'

"Plug 'tpope/vim-endwise'
"
"Plug 'yggdroot/indentline'
"
"Plug 'dense-analysis/ale'
"
"Plug 'tpope/vim-sensible'
"
"Plug 'tpope/vim-unimpaired'
"
"Plug 'tpope/vim-repeat'
"
"Plug 'vim-test/vim-test'
"

call plug#end()

syntax enable

set encoding=utf-8
set showcmd                     " display incomplete commands

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

" Don't create backups
set noswapfile
set nobackup
set nowb

let g:ackprg = 'ag --vimgrep --smart-case --hidden'
cnoreabbrev ag Ack

set tags=tags

map <Leader>t :FZF<CR>

set clipboard=unnamed           " User system clipboard

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Return unhighlights current search
nnoremap <CR> :nohlsearch<cr>

set background=dark
colorscheme PaperColor

syn on
set nocompatible
set noswapfile
set nobackup
set nonumber
set ruler
set modeline
set modelines=10
set mouse=
set hidden
set smartcase
set ignorecase
set ttimeout
set ttimeoutlen=10

if has("nvim")
  colors lunaperche
  set bg=light
endif

let mapleader=","
let maplocalleader=","

nnoremap <leader><Tab> :b#<CR>
nnoremap <leader>k :bprevious<CR>
nnoremap <leader>l :bnext<CR>
nnoremap <ESC> :nohl<CR>

call plug#begin("~/.vim/plugged")

Plug 'atweiden/vim-fennel'
"Plug 'vim-scripts/paredit.vim'
Plug 'bhurlow/vim-parinfer'

if has("nvim")
  Plug 'Olical/conjure'
  let g:conjure#filetype#fennel = "conjure.client.fennel.stdio"
  let g:conjure#client#fennel#stdio#command = "fennel-1.5.0"
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
endif

call plug#end()

au BufRead,BufNewFile *.p8 set filetype=lua ts=2 sw=2 et ai
au BufRead,BufNewFile *.lua.tic set filetype=lua ts=2 sw=2 et ai

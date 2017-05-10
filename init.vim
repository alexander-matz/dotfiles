" vim: ts=2 sts=2 sw=2 et ai

"""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings

set modeline
set modelines=10
set noswapfile
set nobackup
set nonumber
set nohlsearch
set mouse=

colors desert

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins

call plug#begin()
" syntax
Plug 'wavded/vim-stylus'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'luochen1990/rainbow', { 'for': ['clojure', 'scheme', 'lisp']}
Plug 'leafgarland/typescript-vim'
Plug 'alexander-matz/nim.vim', { 'for': ['nim']}
Plug 'rust-lang/rust.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'isRuslan/vim-es6'
Plug 'JesseKPhillips/d.vim'
Plug 'digitaltoad/vim-jade'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'justinmk/vim-syntax-extra'
Plug 'alexander-matz/todo.vim'

Plug 'tpope/vim-sensible'
Plug 'kassio/neoterm'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeTabsToggle' }
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }

Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'

Plug 'freeo/vim-kalisi'
call plug#end()

map <Leader> <Plug>(easymotion-prefix)

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype specific settings

au FileType python     setlocal ts=4 sts=4 sw=4 et ai
au FileType javascript setlocal ts=2 sts=2 sw=2 et ai
au FileType json       setlocal ts=2 sts=2 sw=2 et ai
au FileType cpp	       setlocal ts=4 sts=4 sw=4 et ai
au FileType c	         setlocal ts=4 sts=4 sw=4 et ai
au FileType lua        setlocal ts=2 sts=2 sw=2 et ai
au FileType markdown   setlocal ts=4 sts=4 sw=4 et ai
au FileType scheme     setlocal ts=2 sts=2 sw=2 et ai
au FileType lisp       setlocal ts=2 sts=2 sw=2 et ai
au FileType clojure    setlocal et ai
au FileType go	       setlocal ts=4 sts=4 sw=4 et ai
au FileType html       setlocal ts=2 sts=2 sw=2 et ai
au FileType haskell    setlocal ts=2 sts=2 sw=2 et ai
au FileType cabal      setlocal ts=2 sts=2 sw=2 et ai
au FileType dart       setlocal ts=2 sts=2 sw=2 et ai
au FileType d          setlocal ts=2 sts=2 sw=2 et ai
au FileType todo       setlocal ts=2 sts=2 sw=2 et ai

au BufNewFile,BufReadPost *.ll setlocal filetype=llvm
au BufNewFile,BufReadPost *.dt setlocal filetype=pug
au BufNewFile,BufReadPost */build.boot setlocal filetype=clojure

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Getting rid of arrow key habits

map <left> <nop>
map <down> <nop>
map <up> <nop>
map <right> <nop>

imap <left> <nop>
imap <down> <nop>
imap <up> <nop>
imap <right> <nop>

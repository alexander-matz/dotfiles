" vim: ts=2 sts=2 sw=2 et ai

"""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings

set noswapfile
set nobackup
set nonumber
set ruler
set modeline
set modelines=10
set nohlsearch
set mouse=
set hidden
set smartcase

colors desert

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins

call plug#begin()
" syntax
Plug 'alexander-matz/todo.vim'

Plug 'wavded/vim-stylus'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'lervag/vimtex', { 'for': ['tex'] }
Plug 'luochen1990/rainbow', { 'for': ['clojure', 'scheme', 'lisp']}
Plug 'leafgarland/typescript-vim'
Plug 'rust-lang/rust.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'isRuslan/vim-es6'
Plug 'JesseKPhillips/d.vim'
Plug 'digitaltoad/vim-jade'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'justinmk/vim-syntax-extra'
Plug 'hura/vim-asymptote'

" workflow
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'rhysd/vim-grammarous'

" buffer/file browsing etc.
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'justinmk/vim-dirvish'
call plug#end()

let mapleader=","

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings

let s:uname = system("uname -s")
if s:uname == "Darwin"
  let g:clang_library_path='/Applications/Xcode.app/Contents/Frameworks'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype specific settings

au FileType python     setlocal ts=4 sts=4 sw=4 et ai
au FileType javascript setlocal ts=2 sts=2 sw=2 et ai
au FileType typescript setlocal ts=2 sts=2 sw=2 et ai
au FileType json       setlocal ts=2 sts=2 sw=2 et ai
au FileType cpp	       setlocal ts=2 sts=2 sw=2 et ai
au FileType c	         setlocal ts=2 sts=2 sw=2 et ai
au FileType lua        setlocal ts=2 sts=2 sw=2 et ai
au FileType markdown   setlocal ts=4 sts=4 sw=4 et ai tw=79
au FileType scheme     setlocal ts=2 sts=2 sw=2 et ai
au FileType lisp       setlocal ts=2 sts=2 sw=2 et ai
au FileType clojure    setlocal et ai
au FileType go	       setlocal ts=4 sts=4 sw=4 et ai
au FileType html       setlocal ts=2 sts=2 sw=2 et ai
au FileType haskell    setlocal ts=2 sts=2 sw=2 et ai
au FileType cabal      setlocal ts=2 sts=2 sw=2 et ai
au FileType dart       setlocal ts=2 sts=2 sw=2 et ai
au FileType d          setlocal ts=2 sts=2 sw=2 et ai
au FileType todo       setlocal ts=2 sts=2 sw=2 et ai tw=79
au FileType plaintex   setlocal ts=2 sts=2 sw=2 et ai tw=79
au FileType tex        setlocal ts=2 sts=2 sw=2 et ai tw=79
au FileType vim        setlocal ts=2 sts=2 sw=2 et ai

au BufNewFile,BufReadPost *.ll setlocal filetype=llvm
au BufNewFile,BufReadPost *.tex setlocal filetype=tex
au BufNewFile,BufReadPost *.dt setlocal filetype=pug
au BufNewFile,BufReadPost */build.boot setlocal filetype=clojure

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable arrow keys

map <left> <nop>
map <down> <nop>
map <up> <nop>
map <right> <nop>

imap <left> <nop>
imap <down> <nop>
imap <up> <nop>
imap <right> <nop>

let g:buffergator_viewport_split_policy = "B"

nnoremap <leader><Tab> :b#<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Convenience Session wrappers

if !exists(":SS")
  :command SS mks! .vimsession
  :command LS source .vimsession
endif

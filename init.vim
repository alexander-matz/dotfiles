" vim: ts=2 sts=2 sw=2 et ai

"""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings

set modeline
set modelines=10
set noswapfile
set nobackup
set nonumber
set ruler
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
Plug 'hura/vim-asymptote'

Plug 'kassio/neoterm'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'rhysd/vim-grammarous'

Plug 'freeo/vim-kalisi'
call plug#end()

map <Leader> <Plug>(easymotion-prefix)

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

au BufNewFile,BufReadPost *.ll setlocal filetype=llvm
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

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Convenience Session wrappers

if !exists(":SS")
  :command SS mks! .vimsession
  :command LS source .vimsession
endif

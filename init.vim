" vim: ts=2 sts=2 sw=2 et ai

"""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings

set noswapfile
set nobackup
set nonumber
set ruler
set modeline
set nohlsearch
set mouse=
set hidden
set smartcase
set ignorecase
set nohls

colors peachpuff
set ttimeoutlen=10

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins

call plug#begin()
" syntax
Plug 'alexander-matz/todo.vim'
Plug 'alexander-matz/vim-llvm'
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
Plug 'posva/vim-vue'
Plug 'leafo/moonscript-vim'

" workflow
Plug 'easymotion/vim-easymotion'
Plug 'rhysd/vim-grammarous'
" Plug 'justmao945/vim-clang'

" buffer/file browsing etc.
Plug 'ctrlpvim/ctrlp.vim'
Plug 'justinmk/vim-dirvish'
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Keybindings

let mapleader=","

nnoremap <leader><Tab> :b#<CR>
nnoremap <leader>k :bprevious<CR>
nnoremap <leader>l :bnext<CR>
nnoremap <leader>b :ls<CR>:b 
nnoremap <leader>d :w !diff % -<CR>
nnoremap <leader>s :syntax sync fromstart<CR>
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

map <C-L> <Esc>
imap <C-L> <Esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings

let s:uname = system("uname -s")
if s:uname == "Darwin"
  let g:clang_library_path='/Applications/Xcode.app/Contents/Frameworks'
endif
let g:clang_auto=0
let g:clang_diagsopt=''


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype specific settings

au FileType python     setlocal ts=4 sts=4 sw=4 et ai
au FileType javascript setlocal ts=2 sts=2 sw=2 et ai
au FileType typescript setlocal ts=2 sts=2 sw=2 et ai
au FileType json       setlocal ts=2 sts=2 sw=2 et ai
au FileType vue        setlocal ts=2 sts=2 sw=2 et ai
au FileType cpp	       setlocal ts=2 sts=2 sw=2 et ai
au FileType c	         setlocal ts=2 sts=2 sw=2 et ai
au FileType cuda       setlocal ts=2 sts=2 sw=2 et ai
au FileType lua        setlocal ts=2 sts=2 sw=2 et ai
au FileType markdown   setlocal ts=4 sts=4 sw=4 et ai tw=79
au FileType scheme     setlocal ts=2 sts=2 sw=2 et ai
au FileType lisp       setlocal ts=2 sts=2 sw=2 et ai
au FileType clojure    setlocal et ai
au FileType go         setlocal ts=4 sts=4 sw=4 ai
au FileType html       setlocal ts=2 sts=2 sw=2 et ai
au FileType haskell    setlocal ts=2 sts=2 sw=2 et ai
au FileType cabal      setlocal ts=2 sts=2 sw=2 et ai
au FileType dart       setlocal ts=2 sts=2 sw=2 et ai
au FileType d          setlocal ts=2 sts=2 sw=2 et ai
au FileType todo       setlocal ts=2 sts=2 sw=2 et ai tw=79
au FileType tex        setlocal ts=2 sts=2 sw=2 et ai tw=79 spell spelllang=en_US
au FileType vim        setlocal ts=2 sts=2 sw=2 et ai
au FileType xml        setlocal ts=2 sts=2 sw=2 et ai
au FileType cmake      setlocal ts=2 sts=2 sw=2 et ai
au FileType moon       setlocal ts=2 sts=2 sw=2 et ai

au BufNewFile,BufReadPost *.ll setlocal filetype=llvm
au BufNewFile,BufReadPost *.tex setlocal filetype=tex
au BufNewFile,BufReadPost *.dt setlocal filetype=pug
au BufNewFile,BufReadPost */build.boot setlocal filetype=clojure

hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red

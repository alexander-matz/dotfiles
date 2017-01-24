" vim: ts=2 sts=2 sw=2 et ai
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

Plug 'tpope/vim-sensible'
Plug 'kassio/neoterm'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeTabsToggle' }
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }

Plug 'freeo/vim-kalisi'
call plug#end()

set modeline
set modelines=10
set noswapfile
set nobackup
set number
set nohlsearch
set mouse=

colors desert

au FileType python     setlocal ts=4 sts=4 sw=4 et ai
au FileType javascript setlocal ts=2 sts=2 sw=2 et ai
au FileType json       setlocal ts=2 sts=2 sw=2 et ai
au FileType cpp	       setlocal ts=4 sts=4 sw=4 et ai
au FileType c	         setlocal ts=4 sts=4 sw=4 et ai
au FileType lua        setlocal ts=2 sts=2 sw=2 et ai
au FileType markdown   setlocal ts=4 sts=4 sw=4 et ai
au FileType scheme     setlocal ts=2 sts=2 sw=2 et ai
au FileType lisp       setlocal ts=2 sts=2 sw=2 et ai
au FileType clojure    setlocal ts=2 sts=2 sw=2 et ai
au FileType go	       setlocal ts=4 sts=4 sw=4 et ai
au FileType html       setlocal ts=2 sts=2 sw=2 et ai
au FileType haskell    setlocal ts=2 sts=2 sw=2 et ai
au FileType cabal      setlocal ts=2 sts=2 sw=2 et ai
au FileType dart       setlocal ts=2 sts=2 sw=2 et ai
au FileType d          setlocal ts=2 sts=2 sw=2 et ai

au BufNewFile,BufReadPost *.ll setlocal filetype=llvm
au BufNewFile,BufReadPost *.dt setlocal filetype=pug

let g:mywrap = 0
noremap <silent> <Leader>w :call ToggleWrap()<CR>
function ToggleWrap()
  if g:mywrap == 1
    echo "Wrap OFF"
    let g:mywrap = 0
    set virtualedit=all
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <Home>
    silent! iunmap <buffer> <End>
  else
    echo "Wrap ON"
    let g:mywrap = 1
    set virtualedit=
    noremap  <buffer> <silent> <Up>   gk
    noremap  <buffer> <silent> <Down> gj
    noremap  <buffer> <silent> <Home> g<Home>
    noremap  <buffer> <silent> <End>  g<End>
    inoremap <buffer> <silent> <Up>   <C-o>gk
    inoremap <buffer> <silent> <Down> <C-o>gj
    inoremap <buffer> <silent> <Home> <C-o>g<Home>
    inoremap <buffer> <silent> <End>  <C-o>g<End>
  endif
endfunction

function SessionName(name)
  if a:name == ''
    return '~/.vimsessions/default'
  else
    return '~/.vimsessions/' . a:name
  endif
endfunction

function SaveSession(name)
  exec 'mksession! ' . fnameescape(SessionName(a:name))
endfunction

function LoadSession(name)
  exec 'source ' . fnameescape(SessionName(a:name))
endfunction

function DelSession(name)
  delete(fnameescape(Sessionname(a:name)))
endfunction

command -nargs=? SaveSession :call SaveSession(<q-args>)
command -nargs=? LoadSession :call LoadSession(<q-args>)
command -nargs=? DelSession :call DelSession(<q-args>)

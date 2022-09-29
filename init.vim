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

" call plug#begin()
"
" call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Keybindings

let mapleader=","

nnoremap <leader><Tab> :b#<CR>
nnoremap <leader>k :bprevious<CR>
nnoremap <leader>l :bnext<CR>

map <C-L> <Esc>
imap <C-L> <Esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype specific settings

au FileType python     setlocal ts=4 sw=4 et ai
au FileType javascript setlocal ts=2 sw=2 et ai
au FileType typescript setlocal ts=2 sw=2 et ai
au FileType json       setlocal ts=2 sw=2 et ai
au FileType cpp	       setlocal ts=4 sw=4 et ai
au FileType c	         setlocal ts=4 sw=4 et ai
au FileType cuda       setlocal ts=2 sw=2 et ai
au FileType lua        setlocal ts=2 sw=2 et ai
au FileType markdown   setlocal ts=4 sw=4 et ai tw=79
au FileType scheme     setlocal ts=2 sw=2 et ai
au FileType lisp       setlocal ts=2 sw=2 et ai
au FileType clojure    setlocal et ai
au FileType go         setlocal ts=4 sw=4 ai
au FileType html       setlocal ts=2 sw=2 et ai
au FileType haskell    setlocal ts=2 sw=2 et ai
au FileType cabal      setlocal ts=2 sw=2 et ai
au FileType dart       setlocal ts=2 sw=2 et ai
au FileType d          setlocal ts=2 sw=2 et ai
au FileType tex        setlocal ts=2 sw=2 et ai tw=79 spell spelllang=en_US
au FileType vim        setlocal ts=2 sw=2 et ai
au FileType cmake      setlocal ts=2 sw=2 et ai

au BufNewFile,BufReadPost *.tex setlocal filetype=tex

hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red

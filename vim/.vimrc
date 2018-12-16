" ------------------------------------------------------------------------------
" My .vimrc
" 

set encoding=utf-8

function! s:include(path)
  execute 'source' fnameescape(expand('~/.dotfiles/vim/includes/' . a:path))
endfunction

" ------------------------------------------------------------------------------
" OS Check
let s:is_mac = 0
let s:is_unix = 0
let s:is_win = 0

let os=substitute(system('uname'), '\n', '', '')

if os == 'Darwin' || os == 'Mac'
  let s:is_mac = 1
elseif os == 'Linux'
  let s:is_unix = 1
endif

" ------------------------------------------------------------------------------
" Plugins

call s:include( 'plugins.vim' )

" ------------------------------------------------------------------------------
" Edit

call s:include( 'edit.vim' )

" ------------------------------------------------------------------------------
" File type

call s:include( 'filetype.vim' )

" ------------------------------------------------------------------------------
" Edit

call s:include( 'abbreviation.vim' )

" ------------------------------------------------------------------------------
" For each OS

if os == 'Darwin' || os == 'Mac'
  call s:include( 'mac.vim' )
elseif os == 'Linux'
  " let s:is_unix = 1
endif


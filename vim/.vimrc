" ------------------------------------------------------------------------------
" My .vimrc
" 

set encoding=utf-8

function! s:include(path)
  execute 'source' fnameescape(expand('~/.dotfiles/vim/includes/' . a:path))
endfunction

" ------------------------------------------------------------------------------
" OS Check
let os_type=substitute(system('uname -r'), '\n', '', '')
let is_wsl   = (os_type =~ "Microsoft")
let is_linux = (os_type =~ "Linux")

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
" For WSL

if is_wsl
  " Avoid to go wrong background color on default WSL console.
  " https://ja.stackoverflow.com/questions/60686
  set t_ut=
endif


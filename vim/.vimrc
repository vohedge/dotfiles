" ------------------------------------------------------------------------------
" My .vimrc
" 

set encoding=utf-8

function! s:include(path)
  execute 'source' fnameescape(expand('~/.dotfiles/vim/includes/' . a:path))
endfunction

" ------------------------------------------------------------------------------
" ローカル変数
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
" プラグイン

call s:include( 'plugins.vim' )

" ------------------------------------------------------------------------------
" Edit

call s:include( 'edit.vim' )

" ------------------------------------------------------------------------------
" ファイルタイプ

call s:include( 'filetype.vim' )

" ------------------------------------------------------------------------------
" Edit

call s:include( 'abbreviation.vim' )

" ------------------------------------------------------------------------------
" プラットフォーム

if os == 'Darwin' || os == 'Mac'
  call s:include( 'mac.vim' )
elseif os == 'Linux'
  " let s:is_unix = 1
endif


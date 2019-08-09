"
" Plugins
"
" https://github.com/VundleVim/Vundle.vim
"

" Vundle requirement
" -------------------------------------------------------------------------------

set nocompatible 
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins
" -------------------------------------------------------------------------------

" Color Scheme (Wombat256)
Plugin 'wombat256.vim'

" Cool status line
Plugin 'itchyny/lightline.vim'

" Finder
Plugin 'ctrlpvim/ctrlp.vim'

" Ansible yml syntax
Plugin 'chase/vim-ansible-yaml'

" Vuejs
Plugin 'posva/vim-vue'

" Eslint
Plugin 'scrooloose/syntastic.git'
Plugin 'pmsorhaindo/syntastic-local-eslint.vim'

" Python
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'

" Vundle end
" -------------------------------------------------------------------------------
call vundle#end() 
syntax on
filetype plugin indent on 

" ------------------------------------------------------------------------------
" ctrlp {{{

let g:ctrlp_map = '<Space>'


" }}}

" ------------------------------------------------------------------------------
" Syntastic {{{

"" let g:syntastic_always_populate_loc_list = 1
"" let g:syntastic_auto_loc_list = 1
"" let g:syntastic_javascript_checkers = ['eslint']
"" " let g:syntastic_check_on_open = 0
"" " let g:syntastic_check_on_wq = 0
"" " let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
"" " nnoremap <C-C> :w<CR>:SyntasticCheck<CR>
"" 
"" " エラー行に sign を表示
"" let g:syntastic_enable_signs = 1
"" " location list を常に更新
"" let g:syntastic_always_populate_loc_list = 0
"" " location list を常に表示
"" let g:syntastic_auto_loc_list = 0
"" " ファイルを開いた時にチェックを実行する
"" let g:syntastic_check_on_open = 1
"" " :wq で終了する時もチェックする
"" let g:syntastic_check_on_wq = 0

" }}}

" ------------------------------------------------------------------------------
" vim-lsp
" https://qiita.com/kouichi_c/items/5f047ab3a7c64277e97c
" https://gist.github.com/mattn/4583ef3e082691275b79674fedac357c
" https://qiita.com/lighttiger2505/items/29fecc9df0fddc80927a
" {{{

" デバッグ用設定
let g:lsp_log_verbose = 1  " デバッグ用ログを出力
let g:lsp_log_file = expand('~/.cache/tmp/vim-lsp.log')  " ログ出力のPATHを設定

if executable('pyls')
  " pip install python-language-server
  au User lsp_setup call lsp#register_server({
    \ 'name': 'pyls',
    \ 'cmd': {server_info->['pyls']},
    \ 'whitelist': ['python'],
    \ })
endif

" }}}


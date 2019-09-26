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

" Linter
Plugin 'w0rp/ale'

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
"" " $B%(%i!<9T$K(B sign $B$rI=<((B
"" let g:syntastic_enable_signs = 1
"" " location list $B$r>o$K99?7(B
"" let g:syntastic_always_populate_loc_list = 0
"" " location list $B$r>o$KI=<((B
"" let g:syntastic_auto_loc_list = 0
"" " $B%U%!%$%k$r3+$$$?;~$K%A%'%C%/$r<B9T$9$k(B
"" let g:syntastic_check_on_open = 1
"" " :wq $B$G=*N;$9$k;~$b%A%'%C%/$9$k(B
"" let g:syntastic_check_on_wq = 0

" }}}

" ------------------------------------------------------------------------------
" ALE the linter
"
" https://kashewnuts.github.io/2018/12/02/bp_advent_calender.html#w0rp-ale-linter-fixer
" {{{

" ファイル保存時にLinterを実行する
let g:ale_lint_on_save = 1

" テキスト変更時にはLinterを実行しない
let g:ale_lint_on_text_changed = 'never'

" Linter(コードチェックツール)の設定
let g:ale_linters = {
\   'python': ['flake8', 'mypy'],
\}

" ファイル保存時にはFixerを時刻しない
let g:ale_fix_on_save = 0

" テキスト変更時にはFixerを実行しない
let g:ale_fix_on_text_changed = 'never'

" Fixer(コード整形ツール)の設定
let b:ale_fixers = {
\   'python': ['autopep8', 'isort'],
\}

" 余分な空白があるときは警告表示
let b:ale_warn_about_trailing_whitespace = 0

" ALE実行時にでる目印行を常に表示
let g:ale_sign_column_always = 1

" ------------------------------------------------------------------------------
" vim-lsp
"
" pip install python-language-server
"
" https://kashewnuts.github.io/2019/01/28/move_from_jedivim_to_vimlsp.html
" {{{

let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/.cache/tmp/vim-lsp.log')

if executable('pyls')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'pyls',
    \ 'cmd': {server_info->['pyls']},
    \ 'whitelist': ['python'],
    \ })
endif

" }}}


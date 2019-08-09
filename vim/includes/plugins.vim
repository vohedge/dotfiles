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
" vim-lsp
" https://qiita.com/kouichi_c/items/5f047ab3a7c64277e97c
" https://gist.github.com/mattn/4583ef3e082691275b79674fedac357c
" https://qiita.com/lighttiger2505/items/29fecc9df0fddc80927a
" {{{

" $B%G%P%C%0MQ@_Dj(B
let g:lsp_log_verbose = 1  " $B%G%P%C%0MQ%m%0$r=PNO(B
let g:lsp_log_file = expand('~/.cache/tmp/vim-lsp.log')  " $B%m%0=PNO$N(BPATH$B$r@_Dj(B

if executable('pyls')
  " pip install python-language-server
  au User lsp_setup call lsp#register_server({
    \ 'name': 'pyls',
    \ 'cmd': {server_info->['pyls']},
    \ 'whitelist': ['python'],
    \ })
endif

" }}}


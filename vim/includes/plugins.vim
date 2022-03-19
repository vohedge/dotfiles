"
" Plugins
"


" -------------------------------------------------------------------------------
" vim-plug

" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()


" -------------------------------------------------------------------------------
" Plugins

" Color Scheme (Wombat256)
Plug 'gryf/wombat256grf'

" Cool status line
Plug 'itchyny/lightline.vim'

" Finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Ansible yml syntax
Plug 'chase/vim-ansible-yaml'

" Vuejs
Plug 'posva/vim-vue'

" LSP/Completion
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'

" vimspector 
" A multi language graphical debugger for vim
Plug 'puremourning/vimspector'

" vim-nayvy
" Enriching python coding.
Plug 'relastle/vim-nayvy'

" tabnine
" AI Code Completion
if has('win32') || has('win64')
  Plug 'kitagry/asyncomplete-tabnine.vim', { 'do': 'powershell.exe .\install.ps1' }
else
  Plug 'kitagry/asyncomplete-tabnine.vim', { 'do': './install.sh' }
endif

" terraform
Plug 'hashivim/vim-terraform'

" Markdown Preview
" Plug 'vim-denops/denops.vim'
" Plug 'kat0h/bufpreview.vim'
Plug 'iamcco/markdown-preview.nvim'

call plug#end()


" ------------------------------------------------------------------------------
" Vimspector

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'


" ------------------------------------------------------------------------------
" fzf

" コマンド選択を表示
nnoremap <Leader><Space> :Commands<CR>

" コマンド選択してそのまま実行
let g:fzf_commands_expect = 'enter'


" ------------------------------------------------------------------------------
" vim-lsp

let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_text_edit_enabled = 0

" nmap <buffer> <f2> <plug>(lsp-rename)
nmap gd <Plug>(lsp-definition)
nmap gi <Plug>(lsp-implementation)
nmap ,n <plug>(lsp-next-error)
nmap ,p <plug>(lsp-previous-error)
nmap <F2> <plug>(lsp-rename)

call ch_logfile(expand('/tmp/chlogfile.log'), 'w')

" flake8のみを有効化
" https://qiita.com/tk0miya/items/5a5beb2586c63792ce10
let g:lsp_settings = {
\  'pylsp-all': {
\    'workspace_config': {
\      'pylsp': {
\        'configurationSources': ['flake8'],
\        'plugins': {
\          'flake8': {
\            'enabled': 1
\          },
\          'mccabe': {
\            'enabled': 0
\          },
\          'pycodestyle': {
\            'enabled': 0
\          },
\          'pyflakes': {
\            'enabled': 0
\          },
\        }
\      }
\    }
\  }
\}


" ------------------------------------------------------------------------------
" asyncomplete
 
" 自動補完を有効化(デフォルト設定)
let g:asyncomplete_auto_popup = 1

" ※この設定でよいか確認中
let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview

" let g:asyncomplete_popup_delay = 300
" 補完完了後にプレビューウィンドウを自動的に閉じる
" https://github.com/prabirshrestha/asyncomplete.vim
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" 補完表示時のEnterで改行をしない
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"


" ------------------------------------------------------------------------------
" asyncomplete-ultisnips.vim

" 以下の設定では入力中のEnterキーが機能しなくなる
"let g:UltiSnipsExpandTrigger="<CR>"
let g:UltiSnipsExpandTrigger="<tab>"
 
" Ultisnipsをasyncompleteのソースとして登録
call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
    \ 'name': 'ultisnips',
    \ 'allowlist': ['*'],
    \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
    \ }))


" ------------------------------------------------------------------------------
" UltiSnips

let g:UltiSnipsSnippetDirectories=[$HOME.'/.dotfiles/vim/snippets']

" https://vi.stackexchange.com/questions/21712/how-to-change-the-docstring-format-of-the-snippets-by-ultisnips
let g:ultisnips_python_style = 'google'
 
" スニペットの編集を別タブで表示
let g:UltiSnipsEditSplit = 'tabdo'

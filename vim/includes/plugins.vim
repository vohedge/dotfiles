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
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Ansible yml syntax
Plugin 'chase/vim-ansible-yaml'

" Vuejs
Plugin 'posva/vim-vue'

" PlantUML Viewer
Plugin 'weirongxu/plantuml-previewer.vim'
Plugin 'open-browser.vim'
Plugin 'aklt/plantuml-syntax'

" vimspector 
" A multi language graphical debugger for vim
Plugin 'puremourning/vimspector'

" LSP/Completion
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'prabirshrestha/asyncomplete-ultisnips.vim'

" terraform
Plugin 'hashivim/vim-terraform'

" Markdown Preview
" Plugin 'vim-denops/denops.vim'
" Plugin 'kat0h/bufpreview.vim'
Plugin 'iamcco/markdown-preview.nvim'

" ultisnips

" Vundle end
call vundle#end() 
filetype plugin indent on 
syntax on


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

" set completeopt=menuone,noinsert
" inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
" inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"
"

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

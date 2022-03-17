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

" LSP
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'

" terraform
Plugin 'hashivim/vim-terraform'

" Markdown Preview
Plugin 'vim-denops/denops.vim'
Plugin 'kat0h/bufpreview.vim'

" Vundle end
call vundle#end() 
filetype plugin indent on 
syntax on


" ------------------------------------------------------------------------------
" vim-lsp

let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 1
" let g:asyncomplete_popup_delay = 300
let g:lsp_text_edit_enabled = 0

nmap <buffer> <f2> <plug>(lsp-rename)
" 自動的にScratch windowsを閉じる
" https://github.com/prabirshrestha/vim-lsp/issues/650
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

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
" Vimspector

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'


" ------------------------------------------------------------------------------
" fzf

" コマンド選択を表示
nnoremap <Leader><Space> :Commands<CR>

" コマンド選択してそのまま実行
let g:fzf_commands_expect = 'enter'

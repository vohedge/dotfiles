" ============================================================
"
" Vundle
"
" ============================================================
" Set up Neobundle Plugin
"
" 1. $ mkdir -p ~/.vim/bundle
" 2. $ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
" 3. :NeoBundleInstall 
" * Update-> :NeoBundleInstall!
"
set nocompatible
filetype off 
filetype plugin indent off

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/neosnippet.git'
NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'git://github.com/mattn/zencoding-vim.git'
NeoBundle 'git://github.com/scrooloose/nerdtree.git'
NeoBundle 'git://github.com/joonty/vdebug.git'
NeoBundle 'wombat256.vim'
NeoBundle 'git://github.com/Shougo/vimfiler.git'
NeoBundle 'git://github.com/Shougo/vimproc.git'
NeoBundle 'git://github.com/Shougo/vimshell.git'
NeoBundle 'git://github.com/daisuzu/unite-gtags.git'
NeoBundle 'gtags.vim'
NeoBundle 'git://github.com/Lokaltog/vim-powerline.git'

" camelcasemotion : CamelCaseやsnake_case単位でのワード移動
NeoBundle 'camelcasemotion'

" NERD_tree, taglist, srcexpl の統合
NeoBundle 'trinity.vim'

" JavaScript
NeoBundle 'JavaScript-syntax'

" jQuery
NeoBundle 'jQuery'

" coffee script
NeoBundle 'kchmck/vim-coffee-script'

" python
NeoBundle 'yuroyoro/vim-python'

" nginx conf
NeoBundle 'nginx.vim'

" シンタックスチェック
NeoBundle 'git://github.com/scrooloose/syntastic.git'

" ctags
" NeoBundle 'git://github.com/vim-scripts/taglist.vim.git'
NeoBundle 'git://github.com/majutsushi/tagbar'

" tagsを利用したソースコード閲覧・移動補助機能 tagsファイルの自動生成
NeoBundle 'Source-Explorer-srcexpl.vim'

" Git
NeoBundle 'git://github.com/tpope/vim-fugitive.git'

filetype plugin indent on

" ============================================================
"
" My Config
"
" ============================================================
" Display
set t_Co=256
syntax on
colorscheme wombat256mod
set number
set ruler
set cmdheight=2
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set title
set linespace=0
set wildmenu
set showcmd

" Edit
set nobackup
set tabstop=4
set noexpandtab
set shiftwidth=4
set softtabstop=4
autocmd FileType php :set tags=~/.vim/.tags
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" Others
set noerrorbells

" Fix Multibyte Bug
if exists('&ambiwidth')
	set ambiwidth=double
endif

" Grep
command! -complete=file -nargs=+ Grep call s:grep([<f-args>])
function! s:grep(args)
	let target = len(a:args) > 1 ? join(a:args[1:]) : '**/*'
	execute 'vimgrep' '/' . a:args[0] . '/j ' . target
	if len(getqflist()) != 0 | copen | endif
endfunction

" PHP Syntax Check
autocmd filetype php :set makeprg=php\ -l\ %
autocmd filetype php :set errorformat=%m\ in\ %f\ on\ line\ %l

" Python specific tab setting
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

" ============================================================
"
" Plugins
"
" ============================================================
" ------------------------------------------------------------
" Vdebug
let g:vdebug_keymap = {
	\    "run" : "<F5>",
	\    "run_to_cursor" : "<F1>",
	\    "step_over" : "<F3>",
	\    "step_into" : "<F2>",
	\    "step_out" : "<F4>",
	\    "close" : "<F6>",
	\    "detach" : "<F7>",
	\    "set_breakpoint" : "<F10>",
	\    "get_context" : "<F11>",
	\    "eval_under_cursor" : "<F12>",
	\}

" ------------------------------------------------------------
" unite
" unite prefix key.
nnoremap [unite] <Nop>
nmap <Space><Space> [unite]
 
" インサートモードで開始しない
let g:unite_enable_start_insert = 0
 
" file_mruの表示フォーマットを指定。空にすると表示スピードが高速化される
let g:unite_source_file_mru_filename_format = ''

" Yank履歴の有効化
let g:unite_source_history_yank_enable =1 

" よく使うもの
nnoremap <silent> [unite]g :<C-u>UniteWithBufferDir -buffer-name=files buffer file<CR>
"現在開いているファイルのディレクトリ下のファイル一覧。
"開いていない場合はカレントディレクトリ
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" バッファ一覧
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
" 最近使用したファイル一覧
nnoremap <silent> [unite]r :<C-u>Unite file_mru<CR>
" ブックマーク一覧
nnoremap <silent> [unite]k :<C-u>Unite bookmark<CR>
" ブックマークに追加
nnoremap <silent> [unite]ba :<C-u>UniteBookmarkAdd<CR>
" 全部載せ
nnoremap <silent> [unite]a :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
" Yank履歴
nnoremap <silent> [unite]y :<C-u>Unite history/yank<CR>
" Snippets
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)

"uniteを開いている間のキーマッピング
augroup vimrc
	autocmd FileType unite call s:unite_my_settings()
augroup END
function! s:unite_my_settings()
	"ESCでuniteを終了
	nmap <buffer> <ESC> <Plug>(unite_exit)
	"入力モードのときjjでノーマルモードに移動
	imap <buffer> jj <Plug>(unite_insert_leave)
	"入力モードのときctrl+wでバックスラッシュも削除
	imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
	"sでsplit
	nnoremap <silent><buffer><expr> s unite#smart_map('s', unite#do_action('split'))
	inoremap <silent><buffer><expr> s unite#smart_map('s', unite#do_action('split'))
	"vでvsplit
	nnoremap <silent><buffer><expr> v unite#smart_map('v', unite#do_action('vsplit'))
	inoremap <silent><buffer><expr> v unite#smart_map('v', unite#do_action('vsplit'))
	"fでvimfiler
	nnoremap <silent><buffer><expr> f unite#smart_map('f', unite#do_action('vimfiler'))
	inoremap <silent><buffer><expr> f unite#smart_map('f', unite#do_action('vimfiler'))
endfunction
 
" ------------------------------------------------------------
"vimfiler
"
"vimデフォルトのエクスプローラをvimfilerで置き換える
let g:vimfiler_as_default_explorer = 1
"セーフモードを無効にした状態で起動する
let g:vimfiler_safe_mode_by_default = 0
"現在開いているバッファのディレクトリを開く
nnoremap <silent> :fa :<C-u>VimFilerBufferDir -quit<CR>
"現在開いているバッファをIDE風に開く
nnoremap <silent> :f :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit<CR>
 
"デフォルトのキーマッピングを変更
augroup vimrc
  autocmd FileType vimfiler call s:vimfiler_my_settings()
augroup END
function! s:vimfiler_my_settings()
  nmap <buffer> q <Plug>(vimfiler_exit)
  nmap <buffer> Q <Plug>(vimfiler_hide)
endfunction

" ------------------------------------------------------------
" Nerd Tree
" nmap <silent> <space> :NERDTreeToggle<CR>
" let NERDTreeMinimalUI=1
" let NERDTreeShowHidden=1
" let NERDTreeShowBookmarks=1

" ------------------------------------------------------------
" Yanktemp.vim
" map <silent> sy :call YanktmpYank()<CR>
" map <silent> sp :call YanktmpPaste_p()<CR>
" map <silent> sP :call YanktmpPaste_P()<CR>

" ------------------------------------------------------------
" Neocomplcache
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_underbar_completion=1
imap <C-k> <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplcache_omni_patterns')
	let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

" ------------------------------------------------------------
" Powerline
let g:Powerline_symbols = 'fancy'

" ------------------------------------------------------------
" Syntastic
"
" - HTMLのシンタクスチェックを無効化
" - エラー時にQuickfixを自動オープン
" - エラーをすべて修正するとQuickfixは自動で閉じる
" http://d.hatena.ne.jp/hokaccha/20120525/1337929041
let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': ['html'] }
let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_checker = 'jshint'

" ------------------------------------------------------------
" Taglist
" @TODO 画面上にTags=という文字列が残留する不具合がある
" - 現在表示中のファイルのみのタグしか表示しない
" - 右側にtag listのウインドうを表示する
" - \lでtaglistウインドウを開いたり閉じたり出来るショートカット
" set tags = tags
" let Tlist_Show_One_File = 1
" let Tlist_Use_Right_Window = 1
" taglistのウインドウだけならVimを閉じる
" let Tlist_Exit_OnlyWindow = 1
" let g:tlist_php_settings = 'php;c:class;d:constant;f:function'
" nnoremap <silent> <F8> :TlistToggle<CR>

" ------------------------------------------------------------
" Taglist
"
nmap <F8> :TagbarToggle<CR>

" ------------------------------------------------------------
" Fugitive
"

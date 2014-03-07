" ------------------------------------------------------------------------------
" My .vimrc
" 
" <Set Up>
" 1. $ mkdir -p ~/.vim/bundle
" 2. $ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
" 3. :NeoBundleInstall 
" * Update > NeoBundleUpdate
" 

" ------------------------------------------------------------------------------
" ローカル変数
let s:has_neobundle = isdirectory($HOME . '/.vim/bundle/neobundle.vim')
let s:is_mac = 0
let s:is_unix = 0
let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin' || os == 'Mac'
	let s:is_mac = 1
elseif os == 'Linux'
	let s:is_unix = 1
endif

" ------------------------------------------------------------------------------
" プラグイン
set nocompatible
filetype off 
filetype plugin indent off

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))

" 補完
NeoBundle 'https://github.com/Shougo/neocomplcache.git'

" スニペット管理
NeoBundle 'https://github.com/Shougo/neosnippet.git'
NeoBundle 'https://github.com/Shougo/neosnippet-snippets.git'

" プラグイン管理
NeoBundle 'https://github.com/Shougo/neobundle.vim.git'

" Unite
NeoBundle 'https://github.com/Shougo/unite.vim.git'

" Zencodeing
NeoBundle 'https://github.com/mattn/emmet-vim.git'

" 置換を快適に
NeoBundle 'https://github.com/osyo-manga/vim-over.git'

" Yunk履歴を活用
NeoBundle 'https://github.com/LeafCage/yankround.vim.git'

" ビジュアル選択で選択したテキストで検索
NeoBundle 'https://github.com/thinca/vim-visualstar.git'

" ファイラー
NeoBundle 'https://github.com/scrooloose/nerdtree.git'

" PHP デバッグ
NeoBundle 'https://github.com/joonty/vdebug.git'

" カラーテーマ
NeoBundle 'https://github.com/vim-scripts/wombat256.vim.git'

" ステータスラインをかっこ良く
" NeoBundle 'https://github.com/bling/vim-airline.git'
NeoBundle 'https://github.com/itchyny/lightline.vim.git'

" ファイラー
NeoBundle 'https://github.com/Shougo/vimfiler.git'

" コード用アウトライナー
NeoBundle 'https://github.com/h1mesuke/unite-outline.git'

" 文章構成用アウトライナー
NeoBundle 'https://github.com/vim-scripts/VOoM.git'

" 非同期処理
NeoBundle 'https://github.com/Shougo/vimproc.git', { 'build' : {
	\		'cygwin': 'make -f make_cygwin.mak',
	\		'mac'	: 'make -f make_mac.mak',
	\		'unix'	: 'make -f make_unix.mak',
	\	},
	\ }

" Vimshell
NeoBundle 'https://github.com/Shougo/vimshell.git'

" Unite quickfix
NeoBundle 'https://github.com/osyo-manga/unite-quickfix.git'

" Unite用のgtagsソース
NeoBundle 'https://github.com/daisuzu/unite-gtags.git'

" Uniteのセッションソース
NeoBundle 'https://github.com/Shougo/unite-session.git'

" gtags
NeoBundle 'https://github.com/vim-scripts/gtags.vim.git'

" camelcasemotion : CamelCaseやsnake_case単位でのワード移動
NeoBundle 'https://github.com/bkad/CamelCaseMotion.git'

" NERD_tree, taglist, srcexpl の統合
NeoBundle 'https://github.com/wesleyche/Trinity.git'

" HTML5 シンタックス
NeoBundle 'https://github.com/othree/html5.vim.git'

" JavaScript シンタックス
NeoBundle 'https://github.com/jelera/vim-javascript-syntax.git'

" jQuery
NeoBundle 'https://github.com/scottmcginness/vim-jquery.git'

" CSS3 シンタックス
NeoBundle 'https://github.com/hail2u/vim-css3-syntax.git'

" SASS シンタックス
NeoBundle 'https://github.com/cakebaker/scss-syntax.vim.git'

" Jade シンタックス
NeoBundle 'https://github.com/digitaltoad/vim-jade.git'

" Handlebar シンタックス
NeoBundle 'https://github.com/mustache/vim-mustache-handlebars.git'

" JSON シンタックス
NeoBundle 'https://github.com/elzr/vim-json.git'

" %で終了タグへジャンプ 
NeoBundle 'https://github.com/edsono/vim-matchit.git'

" 囲んだり、解除したり
NeoBundle 'https://github.com/tpope/vim-surround.git'

" coffee script
NeoBundle 'https://github.com/kchmck/vim-coffee-script.git'

" python
NeoBundle 'https://github.com/masudaK/vim-python.git'

" nginx conf
NeoBundle 'https://github.com/evanmiller/nginx-vim-syntax.git'

" Markdown
NeoBundle 'https://github.com/tpope/vim-markdown.git'

" Quickrun
NeoBundle 'https://github.com/thinca/vim-quickrun.git'

" シンタックスチェック
NeoBundle 'https://github.com/scrooloose/syntastic.git'

" ctags
NeoBundle 'https://github.com/majutsushi/tagbar'
" NeoBundle 'taglist.vim', {'type' : 'nosync', 'base' : '~/.dotfiles/.vim/bundle/manual'}

" Ctagsの自動生成
" NeoBundle 'https://github.com/soramugi/auto-ctags.vim.git'

" tagsを利用したソースコード閲覧・移動補助機能 tagsファイルの自動生成
NeoBundle 'https://github.com/vim-scripts/SrcExpl.git'

" Git
NeoBundle 'https://github.com/tpope/vim-fugitive.git'

" Evernote
NeoBundle 'https://github.com/kakkyz81/evervim.git'

" 候補キーを表示してその場所へジャンプ
NeoBundle 'https://github.com/haya14busa/vim-easymotion.git'

" 複数のカーソル
NeoBundle 'https://github.com/terryma/vim-multiple-cursors.git'

" '='を入力すると' = 'にしたりする
NeoBundle 'https://github.com/kana/vim-smartchr.git'

" インデント量の違いをハイライト
NeoBundle 'https://github.com/nathanaelkane/vim-indent-guides.git'

" vimfilerと連携して置換処理を効率化
NeoBundle 'https://github.com/thinca/vim-qfreplace.git'

" HTML閉じタグコメントを保管
NeoBundle 'https://gist.github.com/vohedge/5221591', { 'script_type' : 'plugin' }

" 自動保存
NeoBundle 'https://github.com/syui/wauto.vim.git'

" sudo したときも.vimrcやプラグインを有効化
NeoBundle 'https://github.com/vim-scripts/sudo.vim.git'

" Unite Sudo
NeoBundle 'https://github.com/Shougo/unite-sudo.git'

" Vimからrspecを実行
NeoBundle 'https://github.com/skwp/vim-rspec.git'

" fの連打で移動
NeoBundle 'https://github.com/rhysd/clever-f.vim.git'

" Rails
NeoBundle 'https://github.com/basyura/unite-rails.git'

" オンラインネーミング辞書をuniteから使う
NeoBundle 'https://github.com/koron/codic-vim.git'

" CodicのUniteソース
NeoBundle 'https://github.com/rhysd/unite-codic.vim.git'

filetype plugin indent on

" ============================================================
"
" My Config
"
" ============================================================
" 内部文字コードを指定
" set encoding=utf-8
" set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8

if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  if &encoding ==# 'utf-8'
    let s:fileencodings_default = &fileencodings
    let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
    let &fileencodings = &fileencodings .','. s:fileencodings_default
    unlet s:fileencodings_default
  else
    let &fileencodings = &fileencodings .','. s:enc_jis
    set fileencodings+=utf-8,ucs-2le,ucs-2
    if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
      set fileencodings+=cp932
      set fileencodings-=euc-jp
      set fileencodings-=euc-jisx0213
      set fileencodings-=eucjp-ms
      let &encoding = s:enc_euc
      let &fileencoding = s:enc_euc
    else
      let &fileencodings = &fileencodings .','. s:enc_euc
    endif
  endif
  unlet s:enc_euc
  unlet s:enc_jis
endif
if has('autocmd')
  function! AU_ReCheck_FENC()
    if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
      let &fileencoding=&encoding
    endif
  endfunction
  autocmd BufReadPost * call AU_ReCheck_FENC()
endif

" Display
set t_Co=256

" 構文ハイライト
syntax on

" 
" set ambiwidth=double

" カラースキーム
colorscheme wombat256mod

" 行番号を表示
set number

" コマンドラインに使われる行数
set cmdheight=2

" カーソルの上下に表示する最小の行数
set scrolloff=5

" すべてのWindowで常にステータスラインを表示
set laststatus=2

" デフォルトのモード表示を無効化
set noshowmode

" インサートモードを抜けるときにnopasteを設定
autocmd InsertLeave * set nopaste

" モード切り替えを高速化
set timeout timeoutlen=1000 ttimeoutlen=75

" 矩形選択の範囲をテキスト外に拡大
set virtualedit=block

" Edit
set nobackup
set tabstop=4
set noexpandtab
set shiftwidth=4
set softtabstop=4
autocmd FileType php :set tags=~/.vim/.tags
set hlsearch
" set list
" set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" Esc 2回押しで検索結果のマーカーを削除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" Others
set noerrorbells

" ペーストモードを切り替え
set pastetoggle=<F12>

" ヤンクしたときにクリップボードへ
set clipboard=unnamed,autoselect

" カーソル移動を常に見た目と同じに変更
nnoremap j gj
nnoremap k gk

" 行の連結時に不要なスペースなしで
nnoremap J gJ

" インデントサイズを連続して変更
vnoremap < <gv
vnoremap > >gv
nnoremap > >>
nnoremap < <<

" vimrc relod
" nnoremap <Space>r :<C-u>source $HOME/.vimrc<CR>

" 80列目にラインを表示
execute "set colorcolumn=" . join( range( 81, 335 ), ',' )
hi ColorColumn ctermbg=233

" textwidthで自動改行しない
set formatoptions=cq

" Grep
command! -complete=file -nargs=+ Grep call s:grep([<f-args>])
function! s:grep(args)
	let target = len(a:args) > 1 ? join(a:args[1:]) : '**/*'
	execute 'vimgrep' '/' . a:args[0] . '/j ' . target
	if len(getqflist()) != 0 | copen | endif
endfunction

" Python specific tab setting
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4

" Ruby specific tab setting
autocmd FileType ruby,eruby,json setl autoindent
autocmd FileType ruby,eruby,json setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType ruby,eruby,json setl tabstop=2 expandtab shiftwidth=2 softtabstop=2

" ejs syntax
autocmd BufNewFile,BufRead *.ejs set filetype=html

" Fugitiveの文字化け防止
autocmd FileType gitcommit :set fileencoding=utf-8

" ============================================================
"
" Plugins
"
" ============================================================
" ------------------------------------------------------------
" vdebug {{{
" let g:vdebug_options['ide_key'] = "XDEBUG_VDEBUG"
if s:has_neobundle && neobundle#tap('vdebug')
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
endif
" }}}

" ------------------------------------------------------------
" unite {{{
if s:has_neobundle && neobundle#tap('unite.vim')
	" unite prefix key.
	nnoremap [unite] <Nop>
	nmap <Space> [unite]
	
	" インサートモードで開始
	let g:unite_enable_start_insert = 1
	
	" file_mruの表示フォーマットを指定。空にすると表示スピードが高速化される
	let g:unite_source_file_mru_filename_format = ''

	" Yank履歴の有効化
	let g:unite_source_history_yank_enable =1 

	" ファイル一覧
	nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir file file/new -buffer-name=files<CR>

	" バッファ一覧
	nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>

	" Codic
	nnoremap <silent> [unite]c :<C-u>Unite codic<CR>

	" 最近使用したファイル一覧
	nnoremap <silent> [unite]r :<C-u>Unite file_mru<CR>

	" Snippets
	" noremap <silent> [unite]s :<C-u>Unite neosnippet/user<CR>

	" アウトライナー
	" nnoremap <silent> [unite]o :<C-u>Unite -vertical -winwidth=30 -no-quit outline<CR>
	nnoremap <silent> [unite]o :<C-u>Unite -vertical -winwidth=30 -buffer-name=outline outline<CR>

	" Yank履歴
	nnoremap <silent> [unite]y :<C-u>Unite history/yank<CR>

	" unite-grepのバックエンドをagに切り替える
	" http://qiita.com/items/c8962f9325a5433dc50d
	if executable('ag')
		let g:unite_source_grep_command = 'ag'
	endif
	let g:unite_source_grep_default_opts = '--nocolor --nogroup'
	let g:unite_source_grep_recursive_opt = ''
	let g:unite_source_grep_max_candidates = 500

	" grep
	vnoremap /g y:Unite grep::-iHRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>

	"uniteを開いている間のキーマッピング
	augroup vimrc
		autocmd FileType unite call s:unite_my_settings()
	augroup END
	function! s:unite_my_settings()
		"ESCでuniteを終了
		nmap <buffer> <ESC> <Plug>(unite_exit)
		imap <buffer> <ESC> <Plug>(unite_exit)
		nmap <buffer> <ESC><ESC> <Plug>(unite_all_exit)
		imap <buffer> <ESC><ESC> <ESC><Plug>(unite_all_exit)

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
	
	" Unite Menu {{{
	if !exists("g:unite_source_menu_menus")
		let g:unite_source_menu_menus = {}
	endif
	nnoremap <silent> [unite]m :Unite -silent -start-insert menu<CR>

		" file search menu {{{
		let g:unite_source_menu_menus.files = {
			\ 'description' : '          search files *[unite]f*',
		\}
		let g:unite_source_menu_menus.files.command_candidates = [
			\['▷ recursive', 'Unite -start-insert file_rec/async'],
			\['▷ grep .', 'Unite -no-quit grep:.'],
			\['▷ find .', 'Unite find:.'],
			\['▷ locate', 'Unite -start-insert locate'],
			\['▷ grep', 'Unite -no-quit grep'],
			\['▷ find', 'Unite find'],
			\['▷ vimgrep', 'Unite vimgrep'],
		\]
		" nnoremap <silent>[unite]f :Unite -silent -start-insert menu:files<CR>
		" }}}

		" file encoding menu {{{
		let g:unite_source_menu_menus.encoding = {
			\ 'description' : '       select file encoding',
		\}
		let g:unite_source_menu_menus.encoding.command_candidates = [
			\['▷ utf8', 'e ++enc=utf8'],
			\['▷ euc-jp', 'e ++enc=euc-jp'],
			\['▷ cp1251', 'e ++enc=cp1251 ++ff=dos'],
			\['▷ koi8-r', 'e ++enc=koi8-r ++ff=unix'],
			\['▷ cp866', 'e ++enc=cp866 ++ff=dos'],
		\]
		" }}}

		" Tabs width {{{
		let g:unite_source_menu_menus.tabs = {
		  \'description': '           select tabs width',
		\}
		let g:unite_source_menu_menus.tabs.command_candidates = [
		  \['▷ 2', 'set ts=2 sts=2 sw=2 et'],
		  \['▷ 4', 'set ts=4 sts=4 sw=4 et'],
		  \['▷ 3', 'set ts=3 sts=3 sw=3 et'],
		\]
		nnoremap <silent>[unite]ct :Unite -silent -start-insert menu:tabs<cr>
		" }}}
		
		" Settings {{{
		let g:unite_source_menu_menus.settings = {
		  \'description': '       vim settings',
		\}
		let g:unite_source_menu_menus.settings.command_candidates = [
		  \['save current session', 'UniteSessionSave'],
		  \['load current session', 'UniteSessionLoad'],
		  \['edit .vimrc', 'edit $MYVIMRC'],
		  \['reload .vimrc', "source $MYVIMRC \| if has('gui_running') \| source $MYGVIMRC \| endif"],
		  \['key map list', 'Unite output:map|map!|lmap'],
		\]
		" }}}
		
		" Unite menu:rails {{{
		let g:unite_source_menu_menus.rails = {
			\ 'description' : 'Rails',
		\}
		let g:unite_source_menu_menus.rails.command_candidates = [
			\['▷ Model                                        :Unite rails/model', 'Unite rails/model'],
			\['▷ Controler                                    :Unite rails/controller', 'Unite rails/controller'],
			\['▷ Views                                        :Unite rails/view', 'Unite rails/view'],
			\['▷ Helper                                       :Unite rails/helper', 'Unite rails/helper'],
			\['▷ Mailer                                       :Unite rails/mailer', 'Unite rails/mailer'],
			\['▷ lib                                          :Unite rails/lib', 'Unite rails/lib'],
			\['▷ db                                           :Unite rails/db', 'Unite rails/db'],
			\['▷ config                                       :Unite rails/config', 'Unite rails/config'],
			\['▷ log                                          :Unite rails/log', 'Unite rails/log'],
			\['▷ javascript                                   :Unite rails/javascript', 'Unite rails/javascript'],
			\['▷ stylesheet                                   :Unite rails/stylesheet', 'Unite rails/stylesheet'],
			\['▷ bundle                                       :Unite rails/bundle', 'Unite rails/bundle'],
			\['▷ bundled_gem                                  :Unite rails/bundled_gem', 'Unite rails/bundled_gem'],
			\['▷ route                                        :Unite rails/route', 'Unite rails/route'],
			\['▷ root                                         :Unite rails/root', 'Unite rails/root'],
			\['▷ rake db:migrate                              :Unite rails/command', 'Unite rails/command'],
			\['▷ rspec                                        :Unite rails/spec', 'Unite rails/spec'],
		\]
		nnoremap <silent> [unite]r :Unite -silent -start-insert menu:rails<CR>

		" Unite menu:git {{{
		let g:unite_source_menu_menus.git = {
			\ 'description' : '            gestionar repositorios git
				\                            ⌘ [espacio]g',
			\}
		let g:unite_source_menu_menus.git.command_candidates = [
			\['▷ tig                                                        ⌘ ,gt',
				\'normal ,gt'],
			\['▷ git status       (Fugitive)                                ⌘ ,gs',
				\'Gstatus'],
			\['▷ git diff         (Fugitive)                                ⌘ ,gd',
				\'Gdiff'],
			\['▷ git commit       (Fugitive)                                ⌘ ,gc',
				\'Gcommit'],
			\['▷ git log          (Fugitive)                                ⌘ ,gl',
				\'exe "silent Glog | Unite quickfix"'],
			\['▷ git blame        (Fugitive)                                ⌘ ,gb',
				\'Gblame'],
			\['▷ git stage        (Fugitive)                                ⌘ ,gw',
				\'Gwrite'],
			\['▷ git checkout     (Fugitive)                                ⌘ ,go',
				\'Gread'],
			\['▷ git rm           (Fugitive)                                ⌘ ,gr',
				\'Gremove'],
			\['▷ git mv           (Fugitive)                                ⌘ ,gm',
				\'exe "Gmove " input("destino: ")'],
			\['▷ git push         (Fugitive, salida por buffer)             ⌘ ,gp',
				\'Git! push'],
			\['▷ git pull         (Fugitive, salida por buffer)             ⌘ ,gP',
				\'Git! pull'],
			\['▷ git prompt       (Fugitive, salida por buffer)             ⌘ ,gi',
				\'exe "Git! " input("comando git: ")'],
			\['▷ git ftp push     (Fugitive, salida por buffer)             ⌘ ,ftp',
				\'!git ftp push'],
			\['▷ git cd           (Fugitive)',
				\'Gcd'],
			\]
		nnoremap <silent> [unite]g :Unite -silent -start-insert menu:git<CR>
		nnoremap <silent> [menu]g :Unite -silent -start-insert menu:git<CR>
endif
" }}}

" ------------------------------------------------------------
" vimfiler {{{
if s:has_neobundle && neobundle#tap('vimfiler')
	"vimデフォルトのエクスプローラをvimfilerで置き換える
	let g:vimfiler_as_default_explorer = 1

	"セーフモードを無効にした状態で起動する
	let g:vimfiler_safe_mode_by_default = 0

	" 編集するファイルは新しいタブで開く
	" let g:vimfiler_edit_action = 'tabopen'

	" Like Textmate icons.
	let g:vimfiler_tree_leaf_icon = ' '
	let g:vimfiler_tree_opened_icon = '▾'
	let g:vimfiler_tree_closed_icon = '▸'
	let g:vimfiler_file_icon = '-'
	let g:vimfiler_marked_file_icon = '*'

	"現在開いているバッファをIDE風に開く
	" nnoremap <silent> <space>f :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit<CR>

	" Vimfilerを開いている間のキーマッピング
	augroup vimrc
	  autocmd FileType vimfiler call s:vimfiler_my_settings()
	augroup END
	function! s:vimfiler_my_settings()
		" ESC 2回でvimfilerを閉じる
		nmap <buffer> <ESC><ESC> <Plug>(vimfiler_hide)

		" Enterでファイルツリーを展開
		" nmap <buffer> <Enter> <Plug>(vimfiler_expand_tree)

		nmap <buffer><expr> t vimfiler#smart_cursor_map(
						\  "\<Plug>(vimfiler_open_file_in_another_vimfiler)",
						\  "\<Plug>(vimfiler_edit_file)")
	endfunction
endif
" }}}

" ------------------------------------------------------------
" Neocomplcache
" http://vim-users.jp/2010/10/hack177/
"
" vim の起動時にneocomplcacheを有効にする
let g:neocomplcache_enable_at_startup=1

" キャメルケースの補完 
let g:neocomplcache_enable_camel_case_completion = 1

" _区切りの補完
let g:neocomplcache_enable_underbar_completion=1

" シンタックスをキャッシュするときの最小文字長を3に
let g:neocomplcache_min_syntax_length = 3

" 前回行われた補完をキャンセル
inoremap <expr><C-g> neocomplcache#undo_completion()

" 補完候補のなかから、共通する部分を補完
inoremap <expr><C-l> neocomplcache#complete_common_string()

"tabで補完候補の選択を行う
imap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_jump_or_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
imap <expr><CR> neosnippet#expandable() ?
        \ '<Plug>(neosnippet_expand_or_jump)' : pumvisible() ?
        \ neocomplcache#smart_close_popup() : '<CR>'

" 現在選択している候補を確定します
inoremap <expr><C-y> neocomplcache#close_popup()

" 現在選択している候補をキャンセルし、ポップアップを閉じます
inoremap <expr><C-e> neocomplcache#cancel_popup()

" Wordpress用辞書ファイルを指定
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default'    : '',
    \ 'php' : '~/.dotfiles/dict/wordpress.dict'
    \ }

" ------------------------------------------------------------
" Neosnippet {{{
"
if s:has_neobundle && neobundle#tap('neosnippet')
	" key-mapping
	imap <C-k> <Plug>(neosnippet_expand_or_jump)
	smap <C-k> <Plug>(neosnippet_expand_or_jump)
	imap <C-s> i_<Plug>(neosnippet_start_unite_snippet)

	" SuperTab like snippets behavior.
	" http://kazuph.hateblo.jp/entry/2013/01/19/193745
	imap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
	smap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

	" 自分用スニペットファイルの場所を指定
	let g:neosnippet#snippets_directory='~/.dotfiles/snipetts'
endif
" }}}

" ------------------------------------------------------------
" machit.vim {{{
"
" %でhtmlの終了タグへジャンプ
"
runtime macros/matchit.vim
let b:match_words = "if:endif,foreach:endforeach,\<begin\>:\<end\>"
" }}}

" ------------------------------------------------------------
" camelcasemotion.vim
if s:has_neobundle && neobundle#tap('CamelCaseMotion')
	nmap <silent> ,w <Plug>CamelCaseMotion_w
	xmap <silent> ,w <Plug>CamelCaseMotion_w
	omap <silent> ,w <Plug>CamelCaseMotion_w
	nmap <silent> ,b <Plug>CamelCaseMotion_b
	xmap <silent> ,b <Plug>CamelCaseMotion_b
	omap <silent> ,b <Plug>CamelCaseMotion_b
endif
" }}}

" ------------------------------------------------------------
" Syntastic {{{
"
" - HTMLのシンタクスチェックを無効化
" - エラー時にQuickfixを自動オープン
" - エラーをすべて修正するとQuickfixは自動で閉じる
" http://d.hatena.ne.jp/hokaccha/20120525/1337929041
"
if s:has_neobundle && neobundle#tap('syntastic')
	let g:syntastic_mode_map = { 'mode': 'active',
	  \ 'active_filetypes': [],
	  \ 'passive_filetypes': ['html', 'sass'] }
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_javascript_checkers = ['jshint']
endif
" }}}

" ------------------------------------------------------------
" Quickrun / markdown {{{
"
" $> gem install bluefeather
" http://lsifrontend.hatenablog.com/entry/2012/12/18/063454
"
if s:has_neobundle && neobundle#tap('vim-quickrun')
	let g:quickrun_config = {}
	let g:quickrun_config['markdown'] = {
		\ 'command'  : 'bluefeather',
		\ 'exec'     : 'cat %s | %c -',
		\ }
endif
" }}}

" ------------------------------------------------------------
" Taglist
" @TODO 画面上にTags=という文字列が残留する不具合がある
" - 現在表示中のファイルのみのタグしか表示しない
" - 右側にtag listのウインドうを表示する
" - \lでtaglistウインドウを開いたり閉じたり出来るショートカット
"set tags = tags
"let Tlist_Show_One_File = 1
"let Tlist_Use_Right_Window = 1
"" ターミナルで使用するvimでサポートされていない機能を無効化
"let Tlist_Inc_Winwidth = 0
"" taglistのウインドウだけならVimを閉じる
"let Tlist_Exit_OnlyWindow = 1
"" let g:tlist_php_settings = 'php;c:class;d:constant;f:function'
"nnoremap <silent> <F8> :TlistToggle<CR>

" ------------------------------------------------------------
" Tagbar
"
" if s:has_neobundle && neobundle#tap('tagbar')
" 	nmap <F8> :TagbarToggle<CR>
" endif

" ------------------------------------------------------------
" Fugitive

" ------------------------------------------------------------
" Lightline {{{
if s:has_neobundle && neobundle#tap('lightline.vim')
	set ambiwidth=single
	let g:lightline = {
		\ 'active': {
		\   'left': [ [ 'mode', 'paste' ],
		\             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
		\ },
		\ 'component_function': {
		\	'filename': 'MyFilename',
		\   'fugitive': 'MyFugitive',
		\   'readonly': 'MyReadonly',
		\   'modified': 'MyModified'
		\ },
		\ 'separator': { 'left': '', 'right': '' },
		\ 'subseparator': { 'left': '', 'right': '' }
	\ }

	function! MyFilename()
		let fname = expand('%:t')
		return fname == 'ControlP' ? g:lightline.ctrlp_item :
			\ fname == '__Tagbar__' ? g:lightline.fname :
			\ fname =~ '__Gundo\|NERD_tree' ? '' :
			\ &ft == 'vimfiler' ? vimfiler#get_status_string() :
			\ &ft == 'unite' ? unite#get_status_string() :
			\ &ft == 'vimshell' ? vimshell#get_status_string() :
			\ ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
			\ ('' != fname ? fname : '[No Name]') .
			\ ('' != MyModified() ? ' ' . MyModified() : '')
	endfunction

	function! MyModified()
		if &filetype == "help"
			return ""
		elseif &modified
			return "+"
		elseif &modifiable
			return ""
		else
			return ""
		endif
	endfunction

	function! MyReadonly()
		if &filetype == "help"
			return ""
		elseif &readonly
			return ""
		else
			return ""
		endif
	endfunction

	function! MyFugitive()
		if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
			let _ = fugitive#head()
			return strlen(_) ? ' '._ : ''
		endif
		return ''
	endfunction

	let g:unite_force_overwrite_statusline = 0
	let g:vimfiler_force_overwrite_statusline = 0
	let g:vimshell_force_overwrite_statusline = 0
endif
" }}}

" ------------------------------------------------------------
" Evernote {{{
if s:has_neobundle && neobundle#tap('evervim')
	" EverNoteのトークンを読み込み
	if filereadable(expand('~/.vimrc.local'))
		source ~/.vimrc.local
	endif

	" ノートブック一覧を表示
	nnoremap <space>e :EvervimNotebookList<CR>
endif
" }}}

" ------------------------------------------------------------------------------
" Vim-Over {{{
if s:has_neobundle && neobundle#tap('vim-over')
	" vim-overのプロンプトを表示して%s/を入力
	nnoremap <silent> <space>s :OverCommandLine<CR>%s/
endif
" }}}

" ------------------------------------------------------------------------------
" YankRing {{{
if s:has_neobundle && neobundle#tap('yankround.vim')
	nmap p <Plug>(yankround-p)
	nmap P <Plug>(yankround-P)
	nmap <C-p> <Plug>(yankround-prev)
	nmap <C-n> <Plug>(yankround-next)
endif
" }}}

" ------------------------------------------------------------------------------
" wauto {{{
if s:has_neobundle && neobundle#tap('wauto.vim')
	let g:auto_write = 1
endif
" }}}

" ------------------------------------------------------------------------------
" easy-motion {{{
if s:has_neobundle && neobundle#tap('vim-easymotion')
	" 選択候補
	let g:EasyMotion_keys='hklyuiopnm,qwertzxcvbasdgjf'

	" keep cursor column
	let g:EasyMotion_startofline = 0
	 
	" smartcase
	let g:EasyMotion_smartcase = 1
	 
	" Migemo
	let g:EasyMotion_use_migemo = 1

	" キーマップ
	nmap m <Plug>(easymotion-s)
	vmap m <Plug>(easymotion-s)
	omap m <Plug>(easymotion-s)
endif
" }}}

" ------------------------------------------------------------------------------
" Visualstar {{{
" カーソルを移動せずにVisualstar検索
noremap <Plug>N N
map * <Plug>(visualstar-*)N
map # <Plug>(visualstar-#)N
" }}}

" ------------------------------------------------------------------------------
" Visualstar {{{
" 起動時からインデントのハイライトを有効化
let g:indent_guides_enable_on_vim_startup = 1

" 自動カラーを無効にする
let g:indent_guides_auto_colors=0

" indent guides
augroup indentguides
    autocmd!
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=236
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=235
augroup END

" ハイライト色の変化の幅
let g:indent_guides_color_change_percent = 30

" ガイドの幅
let g:indent_guides_guide_size = 1
" }}}

" ------------------------------------------------------------------------------
" Smartchr {{{
" autocmd FileType php,javascript,python,ruby inoremap <expr> = smartchr#loop(' = ', '=', ' == ')
" autocmd FileType php,javascript,python,ruby inoremap <expr> , smartchr#loop(', ', ',')
" }}}

" ------------------------------------------------------------------------------
" Vim Rspec {{{
nnoremap <silent> ,rs :RunSpec<CR>
nnoremap <silent> ,rl :RunSpecLine<CR>
" let g:RspecSplitHorizontal = 0
" }}}


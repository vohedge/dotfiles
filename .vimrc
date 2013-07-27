" ============================================================
"
" ToDo
"
" ============================================================
" Tag関連(ctags,gtags)
"  - 関数やメソッドの定義元をすばやく参照したかったが、tag生成のコマンドを手動で実行する手間がある
"  - また、gitignore等にtag関連ディレクトリを除外する設定を入れる必要がある
"  - そこで、都度すばやくgrepできる環境を検討したい
"  - 本格的なコードリーディングをする際に再度検討しよう
"  - taglistの動きも少し微妙（phpで表示されない、変なところにtags=が残留する）
" ============================================================
"
" Vundle
"
" ============================================================
" Set up Neobundle Plugin
"
" 1. $ mkdir -p ~/.vim/bundle
" 2. $ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
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

" 補完
NeoBundle 'https://github.com/Shougo/neocomplcache.git'

" スニペット管理
NeoBundle 'https://github.com/Shougo/neosnippet.git'

" プラグイン管理
NeoBundle 'https://github.com/Shougo/neobundle.vim.git'

" Unite
NeoBundle 'https://github.com/Shougo/unite.vim.git'

" Zencodeing
NeoBundle 'https://github.com/mattn/zencoding-vim.git'

" ファイラー
NeoBundle 'https://github.com/scrooloose/nerdtree.git'

" PHP デバッグ
NeoBundle 'https://github.com/joonty/vdebug.git'

" カラーテーマ
NeoBundle 'https://github.com/vim-scripts/wombat256.vim.git'

" ファイラー
NeoBundle 'https://github.com/Shougo/vimfiler.git'

" コード用アウトライナー
NeoBundle 'https://github.com/h1mesuke/unite-outline.git'

" 文章構成用アウトライナー
NeoBundle 'https://github.com/vim-scripts/VOoM.git'

" ?
NeoBundle 'https://github.com/Shougo/vimproc.git'

" Vimshell
NeoBundle 'https://github.com/Shougo/vimshell.git'

" Unite用のgtagsソース
NeoBundle 'https://github.com/daisuzu/unite-gtags.git'

" gtags
NeoBundle 'https://github.com/vim-scripts/gtags.vim.git'

" camelcasemotion : CamelCaseやsnake_case単位でのワード移動
NeoBundle 'https://github.com/bkad/CamelCaseMotion.git'

" NERD_tree, taglist, srcexpl の統合
NeoBundle 'https://github.com/wesleyche/Trinity.git'

" JavaScript
NeoBundle 'https://github.com/jelera/vim-javascript-syntax.git'

" jQuery
NeoBundle 'https://github.com/scottmcginness/vim-jquery.git'

" CSS3 シンタックス
NeoBundle 'https://github.com/hail2u/vim-css3-syntax.git'

" SASS
NeoBundle 'https://github.com/cakebaker/scss-syntax.vim.git'

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
" NeoBundle 'https://github.com/majutsushi/tagbar'
" NeoBundle 'taglist.vim', {'type' : 'nosync', 'base' : '~/.dotfiles/.vim/bundle/manual'}

" tagsを利用したソースコード閲覧・移動補助機能 tagsファイルの自動生成
NeoBundle 'https://github.com/vim-scripts/SrcExpl.git'

" Git
NeoBundle 'https://github.com/tpope/vim-fugitive.git'

" Evernote
NeoBundle 'https://github.com/kakkyz81/evervim.git'

" 複数のカーソル
NeoBundle 'https://github.com/terryma/vim-multiple-cursors.git'

filetype plugin indent on

" ============================================================
"
" My Config
"
" ============================================================
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\

" Display
set t_Co=256
syntax on
colorscheme wombat256mod
set number
set ruler
set cmdheight=2

" すべてのWindowで常にステータスラインを表示
set laststatus=2

" デフォルトのモード表示を無効化
set noshowmode

" ペーストモードを切り替え
set pastetoggle=<F12>

" インサートモードを抜けるときにnopasteを設定
autocmd InsertLeave * set nopaste

" モード切り替えを高速化
set timeout timeoutlen=1000 ttimeoutlen=75

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

" カッコを補完
" inoremap ( (  )<Left><Left>
" inoremap { {<CR><Tab><BS><CR>}<Up><End>
" inoremap [ []<Left>
" inoremap " ""<Left>
" inoremap ' ''<Left>

" Others
set noerrorbells

" vimrc relod
nnoremap <Space>r :<C-u>source $HOME/.vimrc<CR>

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
 
" インサートモードで開始
let g:unite_enable_start_insert = 1
 
" file_mruの表示フォーマットを指定。空にすると表示スピードが高速化される
let g:unite_source_file_mru_filename_format = ''

" Yank履歴の有効化
let g:unite_source_history_yank_enable =1 

" ファイル一覧
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir file -buffer-name=files -winheight=10<CR>

" バッファ一覧
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>

" 最近使用したファイル一覧
nnoremap <silent> [unite]r :<C-u>Unite file_mru<CR>

" Snippets
noremap <silent> [unite]s :<C-u>Unite neosnippet/user<CR>

" アウトライナー
" nnoremap <silent> [unite]o :<C-u>Unite -vertical -winwidth=30 -no-quit outline<CR>
nnoremap <silent> [unite]o :<C-u>Unite -vertical -winwidth=30 -buffer-name=outline outline<CR>

" Yank履歴
nnoremap <silent> [unite]y :<C-u>Unite history/yank<CR>

" unite-grepのバックエンドをagに切り替える
" http://qiita.com/items/c8962f9325a5433dc50d
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_max_candidates = 500

" grep
vnoremap /g y:Unite grep::-iHRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>

" Project内のファイルをgrep
" http://sanrinsha.lolipop.jp/blog/2013/03/%E3%83%97%E3%83%AD%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88%E5%86%85%E3%81%AE%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%82%92unite-grep%E3%81%99%E3%82%8B.html
nnoremap [unite]gp :<C-u>call <SID>unite_grep_project('-start-insert')<CR>
function! s:unite_grep_project(...)
	let opts = (a:0 ? join(a:000, ' ') : '')
	let dir = unite#util#path2project_directory(expand('%'))
	execute 'Unite' opts 'grep:' . dir
endfunction

" プロジェクト内のファイルを表示
nnoremap <silent> [unite]p :<C-u>Unite file_rec:!<CR>

"uniteを開いている間のキーマッピング
augroup vimrc
	autocmd FileType unite call s:unite_my_settings()
augroup END
function! s:unite_my_settings()
	"ESCでuniteを終了
	nmap <buffer> <ESC><ESC> <Plug>(unite_exit)
	imap <buffer> <ESC><ESC> <Plug>(unite_exit)

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

" 編集するファイルは新しいタブで開く
" let g:vimfiler_edit_action = 'tabopen'

" Like Textmate icons.
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'

"現在開いているバッファをIDE風に開く
nnoremap <silent> <space>f :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit<CR>

" Vimfilerを開いている間のキーマッピング
augroup vimrc
  autocmd FileType vimfiler call s:vimfiler_my_settings()
augroup END
function! s:vimfiler_my_settings()
	" ESC 2回でvimfilerを閉じる
	nmap <buffer> <ESC><ESC> <Plug>(vimfiler_hide)

	" Enterでファイルツリーを展開
	nmap <buffer> <Enter> <Plug>(vimfiler_expand_tree)

	nmap <buffer><expr> t vimfiler#smart_cursor_map(
					\  "\<Plug>(vimfiler_open_file_in_another_vimfiler)",
					\  "\<Plug>(vimfiler_edit_file)")
endfunction

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
" Neosnippet
"
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


" ------------------------------------------------------------
" machit.vim
" %でhtmlの終了タグへジャンプ
runtime macros/matchit.vim
let b:match_words = "if:endif,foreach:endforeach,\<begin\>:\<end\>"

" ------------------------------------------------------------
" camelcasemotion.vim
:map <silent> w <Plug>CamelCaseMotion_w
:map <silent> b <Plug>CamelCaseMotion_b
:map <silent> e <Plug>CamelCaseMotion_e
:omap <silent> iw <Plug>CamelCaseMotion_iw
:vmap <silent> iw <Plug>CamelCaseMotion_iw
:omap <silent> ib <Plug>CamelCaseMotion_ib
:vmap <silent> ib <Plug>CamelCaseMotion_ib
:omap <silent> ie <Plug>CamelCaseMotion_ie
:vmap <silent> ie <Plug>CamelCaseMotion_ie

" ------------------------------------------------------------
" Syntastic
"
" - HTMLのシンタクスチェックを無効化
" - エラー時にQuickfixを自動オープン
" - エラーをすべて修正するとQuickfixは自動で閉じる
" http://d.hatena.ne.jp/hokaccha/20120525/1337929041
let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': ['html', 'sass'] }
let g:syntastic_auto_loc_list = 1
let g:syntastic_javascript_checker = 'jshint'

" ------------------------------------------------------------
" Quickrun / markdown
"
" $> gem install bluefeather
" http://lsifrontend.hatenablog.com/entry/2012/12/18/063454
let g:quickrun_config = {}
let g:quickrun_config['markdown'] = {
    \ 'command'  : 'bluefeather',
    \ 'exec'     : 'cat %s | %c -',
    \ }

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
" nmap <F8> :TagbarToggle<CR>

" ------------------------------------------------------------
" Fugitive

" ------------------------------------------------------------
" Powerline
let OSTYPE = system('uname')

if OSTYPE == "Darwin\n"
	set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
elseif OSTYPE == "Linux\n"
	set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim
endif

" ------------------------------------------------------------
" Evernote
if filereadable(expand('~/.vimrc.local'))
	source ~/.vimrc.local
endif

" ノートブック一覧を表示
nnoremap <space>e :EvervimNotebookList<CR>

" ------------------------------------------------------------
" HTMLの閉じタグの前にコメントを入れる
" https://gist.github.com/hokaccha/411828
function! Endtagcomment()
    let reg_save = @@

    try
        silent normal vaty
    catch
        execute "normal \<Esc>"
        echohl ErrorMsg
        echo 'no match html tags'
        echohl None
        return
    endtry

    let html = @@

    let start_tag = matchstr(html, '\v(\<.{-}\>)')
    let tag_name  = matchstr(start_tag, '\v([a-zA-Z]+)')

    let id = ''
    let id_match = matchlist(start_tag, '\vid\=["'']([^"'']+)["'']')
    if exists('id_match[1]')
        let id = '#' . id_match[1]
    endif

    let class = ''
    let class_match = matchlist(start_tag, '\vclass\=["'']([^"'']+)["'']')
    if exists('class_match[1]')
        let class = '.' . join(split(class_match[1], '\v\s+'), '.')
    endif

    execute "normal `>va<\<Esc>`<"

    let comment = g:endtagcommentFormat
    let comment = substitute(comment, '%tag_name', tag_name, 'g')
    let comment = substitute(comment, '%id', id, 'g')
    let comment = substitute(comment, '%class', class, 'g')
    let @@ = comment

	" タグの後ろにコメントを展開 
    normal ""$p

    let @@ = reg_save
endfunction

let g:endtagcommentFormat = '<!-- %id%class -->'
nnoremap ,t :<C-u>call Endtagcomment()<CR>


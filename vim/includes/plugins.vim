"
" Plugins
"

" ==============================================================================
"
" NeoBundle
"

filetype off 
filetype plugin indent off

let s:has_neobundle = isdirectory($HOME . '/.vim/bundle/neobundle.vim')

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))

" 補完
" NeoBundle 'https://github.com/Shougo/neocomplcache.git'
NeoBundle 'https://github.com/Shougo/neocomplete.vim.git'

" スニペット管理
" NeoBundle 'https://github.com/Shougo/neosnippet.git'
" NeoBundle 'https://github.com/Shougo/neosnippet-snippets.git'

" プラグイン管理
NeoBundle 'https://github.com/Shougo/neobundle.vim.git'

" Unite
NeoBundle 'https://github.com/Shougo/unite.vim.git'

" Ctrlp
NeoBundle 'https://github.com/ctrlpvim/ctrlp.vim.git'

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
NeoBundle 'https://github.com/itchyny/lightline.vim.git'

" ファイラー
NeoBundle 'https://github.com/Shougo/vimfiler.git'

" コード用アウトライナー
NeoBundle 'https://github.com/h1mesuke/unite-outline.git'

" 文章構成用アウトライナー
" NeoBundle 'https://github.com/vim-scripts/VOoM.git'

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

" Unite tags
NeoBundle 'https://github.com/tsukkee/unite-tag.git'

" " Unite用のgtagsソース
" NeoBundle 'https://github.com/daisuzu/unite-gtags.git'
" 
" Uniteのセッションソース
NeoBundle 'https://github.com/Shougo/unite-session.git'

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

" Git
NeoBundle 'https://github.com/tpope/vim-fugitive.git'

" 候補キーを表示してその場所へジャンプ
NeoBundle 'https://github.com/haya14busa/vim-easymotion.git'

" 複数のカーソル
" Yankroundと競合してしまう
" NeoBundle 'https://github.com/terryma/vim-multiple-cursors.git'

" " '='を入力すると' = 'にしたりする
" NeoBundle 'https://github.com/kana/vim-smartchr.git'
 
" インデント量の違いをハイライト
NeoBundle 'https://github.com/nathanaelkane/vim-indent-guides.git'

" vimfilerと連携して置換処理を効率化
NeoBundle 'https://github.com/thinca/vim-qfreplace.git'

" HTML閉じタグコメントを保管
NeoBundle 'https://gist.github.com/vohedge/5221591', { 'script_type' : 'plugin' }

" 自動保存
" NeoBundle 'https://github.com/syui/wauto.vim.git'

" sudo したときも.vimrcやプラグインを有効化
NeoBundle 'https://github.com/vim-scripts/sudo.vim.git'

" Unite Sudo
NeoBundle 'https://github.com/Shougo/unite-sudo.git'

" Vimからrspecを実行
NeoBundle 'https://github.com/skwp/vim-rspec.git'

" fの連打で移動
NeoBundle 'https://github.com/rhysd/clever-f.vim.git'

" Rails Unite
NeoBundle 'https://github.com/basyura/unite-rails.git'

" Rails 
NeoBundle 'https://github.com/tpope/vim-rails.git'

" echoテンプレートのシンタックス
NeoBundle 'https://github.com/AndrewRadev/vim-eco.git'

" オンラインネーミング辞書をuniteから使う
NeoBundle 'https://github.com/koron/codic-vim.git'

" CodicのUniteソース
NeoBundle 'https://github.com/rhysd/unite-codic.vim.git'

" Memolist
NeoBundle 'https://github.com/glidenote/memolist.vim.git'

filetype plugin indent on

" ------------------------------------------------------------------------------
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

" ------------------------------------------------------------------------------
" unite {{{
if s:has_neobundle && neobundle#tap('unite.vim')

  " unite prefix key.
  nnoremap [unite] <Nop>
  nmap <Space> [unite]

  " インサートモードで開始
  " let g:unite_enable_start_insert = 1

  call unite#custom#profile('default', 'context', {
        \   'start_insert': 1,
        \   'prompt_direction': 'below',
        \   'direction': 'botright',
        \   'split' : 1,
        \})

  call unite#custom#source('file', 'matchers', "matcher_default")

  let g:unite_prompt = ' >>> '

  " file_mruの表示フォーマットを指定。空にすると表示スピードが高速化される
  let g:unite_source_file_mru_filename_format = ''

  " Yank履歴の有効化
  let g:unite_source_history_yank_enable = 1 

  " ファイル一覧
  nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir file file/new -buffer-name=files<CR>
  " nnoremap <silent> [unite]f  :<C-u>Unite file_rec/async:!<CR>

  " バッファ一覧
  nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>

  " Tag
  nnoremap <silent> [unite]t :<C-u>Unite tag<CR>

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

    "入力モードのときjj/kkでノーマルモードに移動
    imap <buffer> jj <Plug>(unite_insert_leave)
    imap <buffer> kk <Plug>(unite_insert_leave)

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

" ------------------------------------------------------------------------------
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
  " nnoremap <silent> <space>t :<C-u>VimFilerBufferDir -split -simple -winwidth=30 -no-quit<CR>

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
endif
" }}}

" ------------------------------------------------------------------------------
" Neocomplete {{{
if s:has_neobundle && neobundle#tap('neocomplete.vim')

  " vim起動時に有効化
  let g:neocomplete#enable_at_startup = 1

  " スマートケースを使用
  let g:neocomplete#enable_smart_case = 1

  " Tabで候補を選択
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

  " Shift-Tabで候補を逆順に選択
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

  " Enterで候補を決定
  inoremap <expr><Enter> pumvisible() ? neocomplete#close_popup() : "\<Enter>"

  " 辞書
  let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'php' : '~/.dotfiles/vim/dict/wordpress.dict'
      \ }

  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

  if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
  endif
  
endif
" }}}

" ------------------------------------------------------------------------------
" Neocomplcache
" http://vim-users.jp/2010/10/hack177/
"
" vim の起動時にneocomplcacheを有効にする
" let g:neocomplcache_enable_at_startup=1
" 
" " キャメルケースの補完 
" let g:neocomplcache_enable_camel_case_completion = 1
" 
" " _区切りの補完
" let g:neocomplcache_enable_underbar_completion=1
" 
" " シンタックスをキャッシュするときの最小文字長を3に
" let g:neocomplcache_min_syntax_length = 3
" 
" " 前回行われた補完をキャンセル
" inoremap <expr><C-g> neocomplcache#undo_completion()
" 
" " 補完候補のなかから、共通する部分を補完
" inoremap <expr><C-l> neocomplcache#complete_common_string()
" 
" "tabで補完候補の選択を行う
" imap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_jump_or_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
" imap <expr><CR> neosnippet#expandable() ?
"       \ '<Plug>(neosnippet_expand_or_jump)' : pumvisible() ?
"       \ neocomplcache#smart_close_popup() : '<CR>'
" 
" " 現在選択している候補を確定します
" inoremap <expr><C-y> neocomplcache#close_popup()
" 
" " 現在選択している候補をキャンセルし、ポップアップを閉じます
" inoremap <expr><C-e> neocomplcache#cancel_popup()
" 
" " Wordpress用辞書ファイルを指定
" let g:neocomplcache_dictionary_filetype_lists = {
"       \ 'default'    : '',
"       \ 'php' : '~/.dotfiles/dict/wordpress.dict'
"       \ }

" ------------------------------------------------------------------------------
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

" ------------------------------------------------------------------------------
" Tagbar {{{
if s:has_neobundle && neobundle#tap('tagbar')
  nmap <F8> :TagbarToggle<CR>
endif
" }}}

" ------------------------------------------------------------------------------
" machit.vim {{{
"
" %でhtmlの終了タグへジャンプ
"
runtime macros/matchit.vim
let b:match_words = "if:endif,foreach:endforeach,\<begin\>:\<end\>"
" }}}

" ------------------------------------------------------------------------------
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

" ------------------------------------------------------------------------------
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

" ------------------------------------------------------------------------------
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

" ------------------------------------------------------------------------------
" Lightline {{{
if s:has_neobundle && neobundle#tap('lightline.vim')
  set ambiwidth=single
  let g:lightline = {
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ], ['ctrlpmark'] ],
        \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
        \ },
        \ 'component_function': {
        \   'fugitive': 'MyFugitive',
        \   'filename': 'MyFilename',
        \   'fileformat': 'MyFileformat',
        \   'filetype': 'MyFiletype',
        \   'fileencoding': 'MyFileencoding',
        \   'mode': 'MyMode',
        \   'ctrlpmark': 'CtrlPMark',
        \ },
        \ 'component_expand': {
        \   'syntastic': 'SyntasticStatuslineFlag',
        \ },
        \ 'component_type': {
        \   'syntastic': 'error',
        \ },
        \ 'separator': { 'left': '', 'right': '' },
        \ 'subseparator': { 'left': '', 'right': '' }
        \ }

  function! MyModified()
    return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
  endfunction

  function! MyReadonly()
    return &ft !~? 'help' && &readonly ? 'RO' : ''
  endfunction

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

  function! MyFugitive()
    try
      if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
        let mark = ''  " edit here for cool mark
        let _ = fugitive#head()
        return strlen(_) ? mark._ : ''
      endif
    catch
    endtry
    return ''
  endfunction

  function! MyFileformat()
    return winwidth(0) > 70 ? &fileformat : ''
  endfunction

  function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
  endfunction

  function! MyFileencoding()
    return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
  endfunction

  function! MyMode()
    let fname = expand('%:t')
    return fname == '__Tagbar__' ? 'Tagbar' :
          \ fname == 'ControlP' ? 'CtrlP' :
          \ fname == '__Gundo__' ? 'Gundo' :
          \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
          \ fname =~ 'NERD_tree' ? 'NERDTree' :
          \ &ft == 'unite' ? 'Unite' :
          \ &ft == 'vimfiler' ? 'VimFiler' :
          \ &ft == 'vimshell' ? 'VimShell' :
          \ winwidth(0) > 60 ? lightline#mode() : ''
  endfunction

  function! CtrlPMark()
    if expand('%:t') =~ 'ControlP'
      call lightline#link('iR'[g:lightline.ctrlp_regex])
      return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
            \ , g:lightline.ctrlp_next], 0)
    else
      return ''
    endif
  endfunction

  let g:ctrlp_status_func = {
    \ 'main': 'CtrlPStatusFunc_1',
    \ 'prog': 'CtrlPStatusFunc_2',
    \ }

  function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
    let g:lightline.ctrlp_regex = a:regex
    let g:lightline.ctrlp_prev = a:prev
    let g:lightline.ctrlp_item = a:item
    let g:lightline.ctrlp_next = a:next
    return lightline#statusline(0)
  endfunction

  function! CtrlPStatusFunc_2(str)
    return lightline#statusline(0)
  endfunction

  let g:tagbar_status_func = 'TagbarStatusFunc'

  function! TagbarStatusFunc(current, sort, fname, ...) abort
      let g:lightline.fname = a:fname
    return lightline#statusline(0)
  endfunction

  augroup AutoSyntastic
    autocmd!
    autocmd BufWritePost *.c,*.cpp call s:syntastic()
  augroup END
  function! s:syntastic()
    SyntasticCheck
    call lightline#update()
  endfunction

  let g:unite_force_overwrite_statusline = 0
  let g:vimfiler_force_overwrite_statusline = 0
  let g:vimshell_force_overwrite_statusline = 0
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
  xmap p <Plug>(yankround-p)
  nmap P <Plug>(yankround-P)
  nmap gp <Plug>(yankround-gp)
  xmap gp <Plug>(yankround-gp)
  nmap gP <Plug>(yankround-gP)
  nmap <C-p> <Plug>(yankround-prev)
  nmap <C-n> <Plug>(yankround-next)
endif
" }}}

" ------------------------------------------------------------------------------
" emmet {{{
if s:has_neobundle && neobundle#tap('emmet-vim')
  let g:user_emmet_leader_key = '<c-y>'
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
if s:has_neobundle && neobundle#tap('vim-visualstar')
  noremap <Plug>N N
  map * <Plug>(visualstar-*)N
  map # <Plug>(visualstar-#)N
endif
" }}}

" ------------------------------------------------------------------------------
" Visualstar {{{
" 起動時からインデントのハイライトを有効化
if s:has_neobundle && neobundle#tap('vim-indent-guides')
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
endif
" }}}

" ------------------------------------------------------------------------------
" Vim Rspec {{{
if s:has_neobundle && neobundle#tap('vim-rspec')
  nnoremap <silent> ,rs :RunSpec<CR>
  nnoremap <silent> ,rl :RunSpecLine<CR>
  " let g:RspecSplitHorizontal = 0
endif
" }}}

" ------------------------------------------------------------------------------
" Vim Rspec {{{
if s:has_neobundle && neobundle#tap('memolist.vim')
  let g:memolist_path         = "~/Dropbox/memo"
  let g:memolist_unite        = 1
  let g:memolist_unite_source = "file_rec"
  let g:memolist_unite_option = "-start-insert"
endif
" }}}

" ------------------------------------------------------------------------------
" CTRLP {{{
if s:has_neobundle && neobundle#tap('ctrlp.vim')

  " デフォルトをMixedに設定
  let g:ctrlp_cmd = 'CtrlPMixed'

  " .gitなどのディレクトリを起点に開く
  let g:ctrlp_working_path_mode = 'ra'

  " 拡張
  let g:ctrlp_extensions = ['tag', 'quickfix', 'dir', 'line', 'mixed']

  " 
  " let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:18'

  " 画面全部使う
  let g:ctrlp_max_height = &lines

  " agがインストールされていれば使用
  if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
  endif
endif
" }}}


" ファイル書き込み時の文字コード
set fileencoding=utf-8

" ファイル読み込み時の文字コード
" set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileencodings=utf-8

" Display
set t_Co=256
" set term=xterm

" 構文ハイライト
syntax on

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

" undoファイルを無効化
set noundofile

" タブが対応する空白の数
set tabstop=2

" タブを挿入するときに空白を使用
set expandtab

" インデントの各段階に使われる空白の数
set shiftwidth=2

" タブやバックスペースの使用等の編集操作をするときに、タブが対応する空白の数
set softtabstop=2

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
" let &colorcolumn=join(range(81,999),",")
" highlight ColorColumn ctermbg=233 guibg=#2c2d27
" let &colorcolumn="80,".join(range(120,999),",")

" textwidthで自動改行しない
set formatoptions=cq

" Grep
" command! -complete=file -nargs=+ Grep call s:grep([<f-args>])
" function! s:grep(args)
"   let target = len(a:args) > 1 ? join(a:args[1:]) : '**/*'
"   execute 'vimgrep' '/' . a:args[0] . '/j ' . target
"   if len(getqflist()) != 0 | copen | endif
" endfunction

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

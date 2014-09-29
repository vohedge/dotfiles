" ------------------------------------------------------------------------------
"  My .givimrc


" ------------------------------------------------------------------------------
" 文字化け回避
source $VIMRUNTIME/delmenu.vim
set langmenu=ja_jp.utf-8
source $VIMRUNTIME/menu.vim

" Font
if has('win32') || has('win64')
	set guifont=Source_Code_Pro_for_Powerline:h11
	set guifontwide=MS_Gothic:h11
elseif has('mac')
	set guifont=Sauce_Code_Powerline:h14
endif

" カラースキーム
colorscheme wombat256mod

" 80列目にラインを表示
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=233 guibg=#303030
let &colorcolumn="80,".join(range(120,999),",")

" ツールバーを非表示
set guioptions-=T

" 起動時のウィンドウサイズ
set columns=110
set lines=40

" Windows環境でのCtrl + Vの修正
if has('win32') || has('win64')
	imap <C-v> <ESC>"+gpa
endif

" クリップボード共有
set clipboard=unnamed

" 半透明化
if has('win32') || has('win64')
  autocmd GUIEnter * set transparency=220
endif

if os == 'Darwin' || os == 'Mac'
  set transparency=10
endif


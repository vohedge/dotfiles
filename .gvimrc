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

" 起動時のウィンドウサイズ
set columns=110
set lines=40

" Windows環境でのCtrl + Vの修正
if has('win32') || has('win64')
	imap <C-v> <ESC>"+gPa
endif

" クリップボード共有
set clipboard=unnamed

" 半透明化
autocmd GUIEnter * set transparency=220

" ============================================================
"
" Vundle
"
" ============================================================
set nocompatible
filetype off 

" git clone http://github.com/gmarik/vundle.git ~/.vim/vundle.git
set rtp+=~/.vim/vundle.git/
call vundle#rc()

" From Github
Bundle 'Shougo/git-vim'
" Bundle 'tpope/vim-fugitive'

" From vim-scripts
Bundle 'wombat256.vim'
Bundle 'ZenCoding.vim'
Bundle 'The-NERD-tree'
Bundle 'neocomplcache'
Bundle 'yanktmp.vim'
Bundle 'DBGp-Remote-Debugger-Interface'

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
" For fugitive
" set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P%{fugitive#statusline()}

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

" ============================================================
"
" Plugins
"
" ============================================================
" Git-Vim
let g:git_command_edit = 'rightbelow vnew'

" Nerd Tree
nmap <silent> <space> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1

" Yanktemp.vim
map <silent> sy :call YanktmpYank()<CR> 
map <silent> sp :call YanktmpPaste_p()<CR> 
map <silent> sP :call YanktmpPaste_P()<CR> 

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

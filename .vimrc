" --------------------
" .vimrc
" --------------------

" プラグイン管理
call pathogen#runtime_append_all_bundles()

" tag
set tags=$HOME/tags

" 検索をファイルの先頭へループしない
set nowrapscan

" ステータスラインに表示する情報の指定
set laststatus=2
set statusline=%F%m%r%h%w\ FORMAT=%{&ff}\ TYPE=%Y\ ASCII=\%03.3b\ HEX=\%02.2B\ POS=%04l,%04v[%p%%]\ LEN=%L

" コマンドをステータスラインに表示
set showcmd

set tabstop=4					" タブサイズ
set nobackup					" バックアップなし
set visualbell t_vb=			" ビープ音なし
set noswapfile					" スワップファイル作らない

" 勝手に改行しない
set formatoptions=q

" 自動インデント時にタブが2つ付くのを防ぐ
set softtabstop=4
set shiftwidth=4

" HTMLのインデントを無効にする
autocmd FileType html set indentexpr&
autocmd FileType xhtml set indentexpr&

" カーソルを表示行単位で移動
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

" BSでインデントや改行を削除できるようにする
set backspace=indent,eol,start

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

" 起動画面なし
set shortmess+=I

" Tab、行末の半角スペースを表示する
set list
set listchars=tab:^\ ,trail:~

" taglist.vim
let Tlist_Auto_Open=1

" 改行時に自動でコメントが挿入されるのをやめる
autocmd FileType * setlocal formatoptions-=ro

set antialias        " アンチエイリアス
set number           " 行番号表示
set ruler            " ルーラー表示

" カラースキーマ
colorscheme desert
"colorscheme zenburn
"colorscheme molokai
"colorscheme wombat
" highlight LineNr ctermfg=darkgrey guifg=#999999
highlight SpecialKey term=underline ctermfg=darkgray guifg=#666666

" ステータスラインの色
highlight statusline term=NONE cterm=NONE guifg=#333333 guibg=#cccccc

" 日本語入力ON時のカーソルの色を設定
if has('multi_byte_ime') || has('xim')
highlight CursorIM guibg=#cc0000 guifg=NONE
endif


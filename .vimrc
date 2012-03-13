" --------------------
" .vimrc
" --------------------

" プラグイン管理
call pathogen#runtime_append_all_bundles()

" tag
set tags=$HOME/tags

" 検索をファイルの先頭へループしない
set nowrapscan

" コマンドをステータス行に表示
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


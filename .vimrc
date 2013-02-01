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

" タブサイズ
set tabstop=4

" カーソルの上または下に表示する最小限の行数
set scrolloff=5

" バックアップなし
set nobackup

" ビープ音なし
set visualbell t_vb=

" 起動画面なし
set shortmess+=I

" スワップファイル作らない
set noswapfile

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

" インサートモードの場合は、一旦ノーマルモードに移ってから移動する
"inoremap <DOWN> <C-c>gja
"inoremap <UP> <C-c>gka

" BSでインデントや改行を削除できるようにする
set backspace=indent,eol,start

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

" Tab、行末の半角スペースを表示する
set list
set listchars=tab:^\ ,trail:~

" taglist.vim
let Tlist_Auto_Open=1
let Tlist_Show_One_File = 1                                      " 現在編集中のソースのタグしか表示しない
let Tlist_Exit_OnlyWiindow = 1                                   " taglist が最後のウインドウなら vim を閉じる
let g:tlist_php_settings = 'php;c:class;d:constant;f:function'   " 表示内容

" 改行時に自動でコメントが挿入されるのをやめる
autocmd FileType * setlocal formatoptions-=ro

set antialias        " アンチエイリアス
set number           " 行番号表示
set ruler            " ルーラー表示
set cursorline       " カーソル行を色分け

" ToDoファイル
command! Todo edit ~/Dropbox/Memo/todo.txt


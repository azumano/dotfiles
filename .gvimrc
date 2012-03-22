" --------------------
" .gvimrc
" --------------------

if has('gui_macvim')

" タブを常に表示
set showtabline=0

" 透明度
set transparency=10

" ツールバー非表示
set guioptions-=T

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

" ウィンドウサイズ
set columns=150      " 横幅
set lines=50         " 行数

" フォント設定
set guifontwide=Osaka:h12
set guifont=Osaka-Mono:h14


endif


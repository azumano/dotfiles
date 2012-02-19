" --------------------
" .gvimrc
" --------------------

if has('gui_macvim')

  set showtabline=0    " タブを常に表示
  set transparency=10  " 透明度
  set guioptions-=T    " ツールバー非表示
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

  " ステータスラインに表示する情報の指定
  set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=
  " ステータスラインの色
  "highlight statusline term=NONE cterm=NONE guifg=#333333 guibg=#cccccc

  " ウィンドウサイズ
  set columns=150      " 横幅
  set lines=50         " 行数

  " フォント設定
  set guifontwide=Osaka:h12
  set guifont=Osaka-Mono:h14

endif


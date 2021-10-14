set encoding=utf-8
scriptencoding utf-8
" 保存時の文字コード
set fileencoding=utf-8
" 読み込み時の文字コードの自動判別. 左側が優先される
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
" 改行コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac
" □や○文字が崩れる問題を解決"
set ambiwidth=double
"行数を表示する
set number
set backspace=indent,eol,start
"ヤンクした時にクリップボードにコピーする
set clipboard=unnamed,autoselect

"----------------------------------------
" シンタックスハイライト（OneDark）
"
" https://github.com/joshdick/onedark.vim
" (.vim/pack/myplugins/start/onedark.vim)
"----------------------------------------
packadd! onedark.vim
syntax on

colorscheme onedark
set background=dark

"----------------------------------------
" 様々な言語のシンタックスやインデントを提供
"　
" https://github.com/sheerun/vim-polyglot
" (.vim/pack/myplugins/start/vim-polyglot)
"----------------------------------------

"----------------------------------------
" カラフルなステータスラインを表示する
"　
" https://github.com/itchyny/lightline.vim
" (.vim/pack/myplugins/start/lightline)
"----------------------------------------
" ステータスラインの見た目の種類
set laststatus=2
" ステータスラインのカラーテーマ
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

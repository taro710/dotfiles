#!/bin/sh

mkdir ~/.vim/pack/myplugins/start
mkdir ~/.vim/pack/myplugins/opt

echo 'vimプラグインインストール開始'

# -------------- 起動時にロードされるプラグイン
cd ~/.vim/pack/myplugins/start
# シンタックスハイライト（OneDark）
echo '=======シンタックスハイライト（OneDark）インストール開始======='
git clone https://github.com/joshdick/onedark.vim.git

# 様々な言語のシンタックスやインデントを提供
echo '=======vim-polyglotインストール開始======='
git clone https://github.com/sheerun/vim-polyglot.git

# カラフルなステータスラインを表示する
echo '=======lightline.vim.gitインストール開始======='
git clone https://github.com/itchyny/lightline.vim.git



# -------------- 任意タイミング（:packadd myplugin）でロードされるプラグイン
cd ~/.vim/pack/myplugins/opt
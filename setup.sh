#!/bin/sh

####################
# homebrewのセットアップ
####################

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


####################
# vimのセットアップ
####################

mkdir -p $HOME/.vim/pack/myplugins/start
mkdir -p $HOME/.vim/pack/myplugins/opt

echo 'vimプラグインインストール開始'

# -------------- 起動時にロードされるプラグイン
cd $HOME/.vim/pack/myplugins/start
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
cd $HOME/.vim/pack/myplugins/opt


####################
# preztoのセットアップ
####################

echo 'preztoインストール開始'

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"


####################
# アプリのセットアップ
####################

echo 'アプリインストール開始'

brew bundle install
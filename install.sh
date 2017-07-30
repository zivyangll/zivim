#!/bin/bash
echo Install Starting …
rm -rf ~/.vim ~/.vimrc
git clone https://github.com/yllziv/zivim.git ~/.vim --depth=1
ln -s ~/.vim/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim --depth=1
vim +PluginInstall! +qall

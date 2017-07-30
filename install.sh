#!/bin/bash
echo Install Starting …
rm -rf ~/.vim ~/.vimrc
git clone https://github.com/yllziv/zivim.git ~/.vim --depth=1
ln -s ~/.vim/.vimrc ~/.vimrc
git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
vim +BundleInstall! +qall

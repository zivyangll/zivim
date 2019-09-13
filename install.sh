#!/bin/bash

echo Install Starting …
rm -rf ~/.vim* ~/.vimrc
git clone https://github.com/yllziv/zivim.git ~/.vim --depth=1
script_dir="$( cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd  )"
ln -sf "$script_dir/.vimrc" ~/.vimrc
mkdir ~/.vim/undo
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall! +qall

#!/bin/bash
echo Install Starting …
rm -rf ~/.vim* ~/.vimrc
git clone https://github.com/yllziv/zivim.git ~/.vim --depth=1
ln -s ~/.vim/.vimrc ~/.vimrc
mv ~/.vim/.tern-config ~
mkdir ~/.vim/undo
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall! +qall

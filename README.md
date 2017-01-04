# **常用vim插件**
------------------
##1. 介绍
把自己的vim配置分享在这里，欢迎大家下载使用。
##2. PreRequisite
在root权限下
- 全局安装git：yum install git 
- 安装node和npm，
- 安装js语法检查插件jshint：sudo npm install -g jshint eslint babel-eslint eslint-plugin-react
- 若需要markdown实时预览，则安装markdown预览插件：npm install -g instant-markdown-d,并取消.vimrc 文件的instant-markdown-d 插件的注释即可。

##3. Installation
- 在shell中执行 git clone https://github.com/yllziv/zivim.git
- rm -rf .vim*
- rm .vimrc
- mv zivim/.vimrc ~
- mv zivim/.editorconfig ~
- mv zivim/.eslintrc ~
- rm -rf zivim
- git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
- 最后进入vim执行 :BundleInstall

##4. 其他注意
YouCompleteMe 插件需要安装一些环境：
- brew install cmake
- cd ~/.vim/bundle/YouCompleteMe
- ./install.py --tern-completer

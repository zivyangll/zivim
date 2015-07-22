# **常用vim插件**
------------------
##1. 介绍
把自己的vim配置分享在这里，欢迎大家下载使用。
##2. PreRequisite
    - git
    - vim版本：7.3+ 可通过 **vim version** 查看
    - npm
        - jshint
    - ctags 


在root权限下
- 全局安装git：yum install git 
- 安装ctags：yum install ctags ，
- 安装node和npm，
- 安装js语法检查插件jshint：npm install -g jshint
- 安装markdown预览插件：npm install -g instant-markdown-d

##3. Installation
- 在shell中执行 git clone https://github.com/yllziv/zivim.git
- rm -rf .vim*
- rm .vimrc
- mv zivim/.vimrc ~
- mv zivim/.editorconfig ~
- rm -rf zivim
- git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
- 最后进入vim执行 :BundleInstall
- 修改~/.vim/bundle/winmanager/plugin/winmanager.vim文件，在ToggleWindowsManager函数下 call s:StartWindowsManager()这行下面添加 exe 'q' 
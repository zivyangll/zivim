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

在root权限下全局安装 yum install git ，安装yum install ctags ，安装node和npm，然后安装jshint：npm install -g jshint


##3. Installation
    一行shell搞定安装
> `bash -c "$( curl https://raw.githubusercontent.com/yllziv/zivim/master/install.sh )"`

##4. Question
- jsbeautify插件需要新建配置文件.editorconfig

  root = true

  [**.js]

  path=~/.vim/bundle/js-beautify/js/lib/beautify.js

  bin=node

  indent_style = space

  indent_size = 4

  [**.css]

  path=~/.vim/bundle/js-beautify/js/lib/beautify-css.js

  indent_style = space

  indent_size = 4

  [**.html]

  vim:path=~/.vim/bundle/js-beautify/js/lib/beautify-html.js

  vim:max_char=78:brace_style=expand

  indent_style = space

  indent_size = 4



- 修改~/.vim/plugin/winmanager.vim文件，在ToggleWindowsManager函数下 call s:StartWindowsManager()这行下面添加 exe 'q' 
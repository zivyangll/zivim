syntax on " 语法高亮
colorscheme solarized
filetype plugin indent on " 为特定文件类型载入相关缩进文件
filetype on " 载入文件类型插件

set clipboard=unnamed " Mac 下共享剪切板
set undofile " vim退出并在下次打开后仍然保留上次的undo历史
set undodir=$HOME/.vim/undo " 需要提前创建该目录，否则不会生效
set undolevels=1000 " max number of undos
set undoreload=10000 " max lines to to save for undo
set hidden " vim切换buffer(文件/tab)后仍然保留undo
set autochdir "自动切换到文件所在文件夹
set autoread "文件自动重载
set autowrite " 文件自动保存
set foldmethod=manual "启用缩进折叠
set foldcolumn=0
set foldlevel=3
set foldenable
set cursorline " 突出显示当前行和列
set cursorcolumn
set fenc=utf-8 " 设定默认解码
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
set nocompatible " 不要使用vi的键盘模式，而是vim自己的
set history=1000 " history文件中需要记录的行数
set confirm " 在处理未保存或只读文件的时候，弹出确认
set viminfo+=! " 保存全局变量
set iskeyword+=_,$,@,%,#,- " 带有如下符号的单词不要被换行分割
set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline:h18 "设置字体
set magic " 设置魔术
set nobackup " 不要备份文件
set nowb
set bufhidden=hide
set linespace=0 " 字符间插入的像素行数目
set wildmenu " 增强模式中的命令行自动完成操作
set showcmd  " 输入的命令显示出来，看的清楚些
set cmdheight=1 " 命令行（在状态行下）的高度，默认为1，这里是2
set backspace=2 " 使回格键（backspace）正常处理indent, eol, start等
set whichwrap+=<,>,h,l " 允许backspace和光标键跨越行边界
set mouse=a " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set shortmess=atI " 启动的时候不显示那个援助索马里儿童的提示
set report=0 " 通过使用: commands命令，告诉我们文件的哪一行被改变过
set noerrorbells " 不让vim发出的滴滴声
set showmatch " 高亮显示匹配的括号
set matchtime=2 " 匹配括号高亮的时间（单位是十分之一秒）
set ignorecase " 在搜索的时候忽略大小写
set ru "标尺信息
set ai " 自动缩进
set hlsearch  "搜索逐字符高亮
set incsearch " 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set scrolloff=3 " 光标移动到buffer的顶部和底部时保持3行距离
set novisualbell " 不要闪烁
set laststatus=2 " 总是显示状态行
set number " 显示行号
set list listchars=trail:๏, " 方便显示tab 和 空格
set autoindent " 继承前一行的缩进方式
set smartindent " 智能自动缩进
set cindent shiftwidth=2 " 自动缩进2空格
set tabstop=2 " 制表符为2
set softtabstop=2 " 统一缩进为2
set shiftwidth=2 " 统一缩进为2
set expandtab " 用空格代替制表符
set wrap " 换行
set smarttab " 在行和段开始处使用制表符
set rtp+=~/.vim/bundle/vundle/  " 使用 vundle 插件
set background=dark
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set fillchars+=stl:\ ,stlnc:\
set t_Co=256
set fo+=mB "对亚洲语言断行支持

let b:javascript_fold=1  "打开javascript折叠
let javascript_enable_domhtmlcss=1 "打开javascript对dom、html和css的支持
let g:molokai_original = 1 "设置颜色
let mapleader = ","  " map leader键设置
let g:mapleader = ","
let b:javascript_fold=1 " 打开javascript折叠
let javascript_enable_domhtmlcss=1 " 打开javascript对dom、html和css的支持
let loaded_matchparen = 0 "关闭自动高亮显示匹配的括号
let g:ctrlp_working_path_mode = 'ra' " ctrlp插件配置
let g:ctrlp_custom_ignore = '\v[\/](node_modules|coverage|target|dist)|(\.(swp|ico|git|svn))$' " ctrlp插件配置
let g:indent_guides_enable_on_vim_startup=1 " vim-indent-guides 随 vim 自启动
let g:indent_guides_guide_size=1 " vim-indent-guides 色块宽度
let g:indent_guides_start_level=2 " vim-indent-guides
let g:indent_guides_auto_colors = 0 " 手动配色
hi IndentGuidesOdd  ctermbg=black " 奇数列设置为黑色
let g:gundo_right = 1 " gundo插件
let g:jsx_ext_required = 0 " vim-jsx插件 让js文件也支持jsx插件
let g:vim_markdown_frontmatter=1 " vim-markdown
let g:vim_markdown_toc_autofit = 1 " vim-markdown
let g:vim_markdown_folding_disabled=1 " vim-markdown
let NERDTreeShowHidden=1 " The-NERD-tree
let NERDTreeShowFiles=1 " The-NERD-tree
let NERDTreeWinPos=1 " The-NERD-tree
let NERDTreeWinPos="left" " The-NERD-tree
let NERDTreeShowLineNumbers=1 " The-NERD-tree
let NERDTreeIgnore=['\.pyc$', '\.idea', 'node_modules', '\~$', '.DS_Store', '\.swp' ] "ignore files in NERDTree " The-NERD-tree
let NERDTreeShowBookmarks=1 " The-NERD-tree
let g:nerdtree_tabs_smart_startup_focus=2
let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"
let NERDSpaceDelims=1 " nerdcommenter 注释添加空格

autocmd! bufwritepost .vimrc source %
autocmd InsertLeave * se nocul  " 用浅色高亮当前行
autocmd InsertEnter * se cul
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css " vim-vue插件
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " 自动关闭
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=mkd  " vim-markdown
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

map <Leader>w :NERDTreeToggle<CR>
nmap <Leader>u :UndotreeToggle<CR>
nmap <leader>h :Toc<cr>
nmap zz :update<cr>
nmap <Leader>c :<C-u>call gitblame#echo()<CR>
nmap <leader>a :Ag! -w "<cword>"<cr> "用 ,a 搜索当前 cursor 下单词
nmap <C-A> :<c-C>ggVG
nmap <S-l> gt
nmap <S-h> gT
nmap <D-r> gt
nmap <C-l> <C-w>l
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k

" macVim 中显示 <D-r> 等，避免误输
imap <D-r> <ESC>
imap <D-d> <ESC>
imap <D-i> <ESC>
imap <D-e> <ESC>
imap <D-/> <ESC>
imap <D-[> <ESC>
imap <D-]> <ESC>
imap <D-Bslash> <ESC>
imap <D-'> <ESC>

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" store swap files in a single directory instead of the current directory with the 'dir' setting
set dir=$HOME/.vim/tmp/swap
if !isdirectory(&dir) | call mkdir(&dir, 'p', 0700) | endif

call vundle#begin()

Plugin 'gmarik/vundle'  " 管理其他插件 :bundleInstall

" 操作型插件
Plugin 'mbriggs/mark.vim' " ,m高亮 ,n去除高亮 ,/下一个标签
Plugin 'repeat.vim' " 重复操作：.
Plugin 'matchit.zip' " 在()，""以及HTML标签之间快速跳转 <c-%>
Plugin 'terryma/vim-multiple-cursors' " 多行操作 <c-n>
Plugin 'kien/ctrlp.vim' " 模糊查询打开文件 <c-p>
Plugin 'scrooloose/nerdcommenter' " ,ci ：切换选中行的注释状态
Plugin 'scrooloose/nerdtree' " 树状显示文件目录 ,w切换,oxcst, 切换窗口 <c-w>
Plugin 'mattn/emmet-vim' " HTML生成<c-y>, 选中标签<c-y>d，跳转<c-y>n，注释：<c-y>/，合并标签：<c-y>j，移除标签对：<c-y>k
Plugin 'tpope/vim-surround' " 换 cs"' 删 ds" 增 ysiw) 多空格 ysiw( 整行 yss
Plugin 'mbbill/undotree'  "编辑文件的时光机器 打开,u 恢复上一步u 撤销 <c+r>
Plugin 'plasticboy/vim-markdown'  " ]]下一标题，[[:上一标题，][下一子标题，[]上一子标题 ，]c当前，]u父（asdf），<leader>h 目录 Enter进入
Plugin 'moll/vim-node' " 自动跳转 require: gf
Plugin 'zivyangll/git-blame.vim' " 提供 Git Commit 信息 ,s
Plugin 'tpope/vim-fugitive' " 集成 Git 命令 :Gblame, :Gstatus :Gcommit
Plugin 'junegunn/gv.vim' " Git Commit 提示 " :GV, 当前文件:GV!
Plugin 'brooth/far.vim' " 多文件替换 :Far a aa <Tab> :Fardo (t T 是否生效)
Plugin 'rking/ag.vim' " ,s 全局搜索

" 展示型插件
Plugin 'itchyny/vim-cursorword' " 相同字符显示下划线
Plugin 'mhinz/vim-signify' " 显示文件变动
Plugin 'Valloric/YouCompleteMe' " 自动完成
Plugin 'valloric/matchtagalways'  " 高亮两个配对的tag
Plugin 'altercation/vim-colors-solarized' " 配置颜色
Plugin 'vim-airline/vim-airline' " 状态栏
Plugin 'nathanaelkane/vim-indent-guides' " 可视化缩进插件
Plugin 'vim-scripts/trailing-whitespace' " 空格处理
Plugin 'pangloss/vim-javascript' " 语法高亮
Plugin 'groenewege/vim-less' " 语法高亮
Plugin 'jelera/vim-javascript-syntax' " 语法高亮
Plugin 'hail2u/vim-css3-syntax' " 语法高亮
Plugin 'othree/html5.vim' " html5
Plugin 'posva/vim-vue' " 语法高亮
Plugin 'mxw/vim-jsx' " react jsx插件
Plugin 'jistr/vim-nerdtree-tabs' " nerdtree 打开标签时保持目录
Plugin 'editorconfig/editorconfig-vim' " 支持editorconfig
Plugin 'docunext/closetag.vim' " 提供标签自动闭合
Plugin 'jiangmiao/auto-pairs' "提供括号自动不全
Plugin 'leafgarland/typescript-vim' " TypeScript 语法高亮

call vundle#end()

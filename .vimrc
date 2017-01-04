""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 一般设定 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

"输入函数使用{{，大括号自动缩进
imap {{ {{

"关闭自动高亮显示匹配的括号
let loaded_matchparen = 1

"启用缩进折叠
set foldmethod=indent
set foldcolumn=0
set foldlevel=3
set foldenable

" 用浅色高亮当前行 
autocmd InsertLeave * se nocul 
autocmd InsertEnter * se cul 

" 设定默认解码 
set fenc=utf-8 
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

" 不要使用vi的键盘模式，而是vim自己的 
set nocompatible

" history文件中需要记录的行数 
set history=1000

" 在处理未保存或只读文件的时候，弹出确认 
set confirm

" 与windows共享剪贴板 
set clipboard+=unnamed

" 侦测文件类型 
filetype on

" 载入文件类型插件 
filetype plugin on

" 为特定文件类型载入相关缩进文件 
filetype indent on

" 保存全局变量 
set viminfo+=!

" 带有如下符号的单词不要被换行分割 
set iskeyword+=_,$,@,%,#,-

" 语法高亮 
syntax on

"打开javascript折叠
let b:javascript_fold=1	 
"打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1

"设置字体
set guifont=Monaco:h10

"设置颜色
let g:molokai_original = 1

"map leader键设置  
let mapleader = ","  
let g:mapleader = ","  

" 突出显示当前行
set cursorline 

" 设置魔术
set magic 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文件设置 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 不要备份文件（根据自己需要取舍） 
set nobackup

" 不要生成swap文件，当buffer被丢弃的时候隐藏它 
setlocal noswapfile 
set bufhidden=hide

" 字符间插入的像素行数目 
set linespace=0

" 增强模式中的命令行自动完成操作 
set wildmenu

" 在状态行上显示光标所在位置的行号和列号 
set ruler 
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 命令行（在状态行下）的高度，默认为1，这里是2 
set cmdheight=1

" 使回格键（backspace）正常处理indent, eol, start等 
set backspace=2

" 允许backspace和光标键跨越行边界 
set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位） 
set mouse=a 
set selection=exclusive 
set selectmode=mouse,key

" 启动的时候不显示那个援助索马里儿童的提示 
set shortmess=atI

" 通过使用: commands命令，告诉我们文件的哪一行被改变过 
set report=0

" 不让vim发出讨厌的滴滴声 
set noerrorbells

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 搜索和匹配 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 高亮显示匹配的括号 
set showmatch


" 匹配括号高亮的时间（单位是十分之一秒） 
set matchtime=2

" 在搜索的时候忽略大小写 
set ignorecase

" 不要高亮被搜索的句子（phrases） 
set nohlsearch

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索） 
set incsearch

" 光标移动到buffer的顶部和底部时保持3行距离 
set scrolloff=3

" 不要闪烁 
set novisualbell

" 我的状态行显示的内容（包括文件类型和解码） 
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 总是显示状态行 
set laststatus=2

" 显示行号
set nu 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文本格式和排版 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 自动格式化 
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释 
set autoindent

" 智能自动缩进
set smartindent

"  自动缩进2空格 
set cindent shiftwidth=2

" 制表符为
set tabstop=2

" 统一缩进为2
set softtabstop=2
set shiftwidth=2

" 用空格代替制表符 
set expandtab

" 不要换行 
set nowrap

" 在行和段开始处使用制表符 
set smarttab

" 打开javascript折叠
let b:javascript_fold=1

" 打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 配置vundle插件
" Github网站上非vim-scripts仓库的插件，按下面格式填写
" Bundle 'tpope/vim-fugitive'
" vim-scripts仓库里的，按下面格式填写
" Bundle 'L9'
"非上面两种情况的，按下面格式填写
" Bundle 'git://git.wincent.com/command-t.git'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"0. vundle插件：管理其他插件
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc() 
Bundle 'gmarik/vundle'  
filetype plugin indent on 

"1. emmet插件，并设置tab为emmet快捷键
Bundle 'mattn/emmet-vim'
"let g:user_emmet_expandabbr_key = '<Tab>'
"为你用的语言自定义行为
let g:user_emmet_settings = {
			\ 'php' : {
			\ 'extends' : 'html',
			\ 'filters' : 'c',
			\ },
			\ 'xml' : {
			\ 'extends' : 'html',
			\ },
			\ 'haml' : {
			\ 'extends' : 'html',
			\ },
			\}
"2.AutoClose插件： 在输入()，""等需要配对的符号时，自动帮你补全剩余半个
"<leader>a 关闭该功能
Bundle 'AutoClose'

"3. matchit插件：在()，""以及HTML标签之间快速跳转,ctrl+%
" % 正向匹配      g% 反向匹配
" [% 定位块首     ]% 定位块尾
Bundle 'matchit.zip'

"4. MatchTag插件 高亮两个配对的tag
Bundle 'gregsexton/MatchTag'

"5. The-NERD-tree插件：树状显示文件目录,设置打开目录快捷键为F2
Bundle 'The-NERD-tree'
 " 按下 F2 调出/隐藏 NERDTree
 map <Leader>w :NERDTreeMirror<CR>
 map <Leader>w :NERDTreeToggle<CR>
 " 当打开 NERDTree 窗口时，自动显示 Bookmarks
 let NERDTreeShowBookmarks=1
 " 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

 "6. The-NERD-Commenter插件：注释代码
Bundle 'The-NERD-Commenter'

 "7. Tabular插件：让代码更加易于纵向排版，以=或,符号对齐:Tab /=或者Tab /:或者Tab /|
Bundle 'godlygeek/tabular'

"8.neocomplcache插件  js语法自动提示 
""Bundle 'Shougo/neocomplcache.vim' 
""let g:neocomplcache_enable_at_startup = 1  "作用：在系统启动的时候启动neo  
""let g:neocomplcache_enable_auto_select = 1 "作用：提示的时候默认选择地一个，如果你设置为0，每次输入都需要用上下键选择，你不妨修改试试效

Bundle 'Valloric/YouCompleteMe'

"9. surround  处理跨多行或者是一些复杂的tag
Bundle 'tpope/vim-surround'

"10. snipmate插件 js代码自动补全插件
Bundle 'msanders/snipmate.vim' 

"11.closetag插件  提供标签自动闭合
Bundle 'docunext/closetag.vim' 

"12.jsbeautify插件：  js代码格式化
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
map <leader>f :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer> <leader>f :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <leader>f :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <leader>f :call CSSBeautify()<cr>

"13.repeat.vim插件：重复操作：.
Bundle 'repeat.vim'

"14 solarized插件：配置颜色
Bundle 'altercation/vim-colors-solarized'
let g:rehash256 = 1
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

"15. vim-multiple-cursors插件：多行操作
Bundle 'terryma/vim-multiple-cursors'
set selection=inclusive

"16. mark.vim : \m 来使其高亮,\n可以去除所选的词的高亮
Bundle 'mbriggs/mark.vim'

"17. ctrlp.vim插件：模糊查询打开文件
Bundle 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"18. gundo插件：编辑文件的时光机器
Bundle 'sjl/gundo.vim'
nnoremap <Leader>u :GundoToggle<CR>
let g:gundo_width = 40
let g:gundo_preview_height = 10
let g:gundo_right = 1

"19. taglist.vim插件：，js不需要，支持不好
"Bundle 'taglist.vim'
""不同时显示多个文件的tag，仅显示一个
"let Tlist_Show_One_File = 1
""taglist为最后一个窗口时，退出vim
"let Tlist_Exit_OnlyWindow = 1
""更新ctags标签文件快捷键设置
"noremap <Leader>tl :!ctags -R<CR>

"20. winmanager插件：实现对vim窗口的管理，不需要
"Bundle 'winmanager'
""定义打开关闭winmanager快捷键为,w
"nmap <silent> <Leader>w :WMToggle<cr>
""在进入vim时自动打开winmanager
"let g:AutoOpenWinManager = 1
""设置winmanager的宽度，默认为25
"let g:winManagerWidth = 30
"
"let g:NERDTree_title="[NERDTree]"
"" 设置界面分割
"let g:winManagerWindowLayout="NERDTree|TagList"
"
"function! NERDTree_Start()
"    exec 'NERDTree'
"endfunction
"
"function! NERDTree_IsValid()
"    return 1
"endfunction
""自动退出Winmanager
"autocmd bufenter * if (winnr("$") == 2 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary")  | qa | endif

"21 accelerated-smooth-scroll:平滑滚动插件
Bundle 'yonchu/accelerated-smooth-scroll'

"22. syntastic插件：检查语法错误
""Plugin 'scrooloose/syntastic'
""let g:syntastic_check_on_open = 1
""let g:syntastic_error_symbol = 'X'
""let g:syntastic_warning_symbol = '!'
""let g:syntastic_auto_loc_list = 1
""let g:syntastic_loc_list_height = 5
""let g:syntastic_enable_highlighting = 0
""set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
""set statusline+=%*
""let g:syntastic_javascript_checkers = ['eslint']

"23 easymotion 插件：快速移动
Bundle 'Lokaltog/vim-easymotion'
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

"24 vim-indent-guides可视化缩进插件，代码显的有些花哨
""Bundle 'nathanaelkane/vim-indent-guides'
"" 随 vim 自启动
""let g:indent_guides_enable_on_vim_startup=1
"" 从第二层开始可视化显示缩进
""let g:indent_guides_start_level=2
"" 色块宽度
""let g:indent_guides_guide_size=1
"" 快捷键 i 开/关缩进可视化
""nmap <silent> <Leader>i <Plug>IndentGuidesToggle
""let g:indent_guides_auto_colors = 0
""autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
""autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"25. ShowMarks 高亮标记位置
 Bundle 'ShowMarks'
let showmarks_enable = 1
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let showmarks_ignore_type = "hqm"
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1
hi ShowMarksHLl ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
hi ShowMarksHLu ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black

"26. Marks-Browser标记浏览窗口
Bundle 'Marks-Browser'
nmap <silent> <leader>mk :MarksBrowser<cr> 

"27. vim-powerline华丽的状态栏
Bundle 'Lokaltog/vim-powerline'
set fillchars+=stl:\ ,stlnc:\

set laststatus=2
set t_Co=256
let g:Poerline_symbols='unicode'

"28. html5
Plugin 'othree/html5.vim'

"29 skammer/vim-css-color 影响打开html速度
"Bundle 'skammer/vim-css-color'
"let g:cssColorVimDoNotMessMyUpdatetime = 1

"30 plasticboy/vim-markdown
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_frontmatter=1
let g:vim_markdown_folding_disabled=1
 au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd 
nmap <silent> <leader>h :Toc<cr> 

"31 markdown实时预览，需要再打开
"Bundle 'suan/vim-instant-markdown'
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 1
" autocmd BufNewFile,BufReadPost *.md set filetype=markdown

 "32 VimIM基于Vim的嵌入式中文输入法
"" Bundle 'VimIM'
""let g:vimim_cloud = 'google,sogou,baidu,qq'  
""let g:vimim_map = 'tab_as_gi'  

"33 react jsx插件
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0 " 让js文件也支持该插件

Plugin 'pangloss/vim-javascript'

"34 eslint js 格式检查

imap <c-1> aaa

"新窗口大小
set lines=30 columns=90
"自动将当前目录设定为当前文件的目录
set autochdir
" 关闭 vi 兼容模式
set nocompatible
" 不自动换行
set nowrap
" 自动语法高亮
syntax on
" 检测文件类型
filetype on
" 检测文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 不自动换行
"set nowrap
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 显示行号
set number
" 不要用空格代替制表符
set expandtab
set tabstop=4
" 设置按BackSpace的时候可以一次删除掉4个空格
set softtabstop=4
" 设定 << 和 >> 命令移动molokai时的宽度为 4
set shiftwidth=4
set smarttab
set history=1024
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 高亮显示匹配的括号
set showmatch
" 设定配色方案
colorscheme zmrok

if has("gui_running")
    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
endif

set guifont=monaco\ 11

"在第80个字符处显示一条线
hi ColorColumn guibg=#324248
set colorcolumn=80
"将默认剪贴板设置为系统剪贴板
set clipboard=unnamedplus
let g:pydiction_location = '~/.vim/dict/complete-dict'
"  支持less语言
au BufNewFile,BufRead *.less set filetype=less

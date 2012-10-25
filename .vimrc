" ==插件设置==

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'Lokaltog/vim-powerline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'groenewege/vim-less'
Bundle 'Raimondi/delimitMate'
Bundle 'hallison/vim-markdown'
" vim-scripts repos
Bundle 'python.vim'
Bundle 'L9'
Bundle 'nginx.vim'
"Bundle 'c.vim'
Bundle 'Pydiction'
Bundle 'molokai'
Bundle 'FencView.vim'
Bundle 'pyflakes.vim'
Bundle 'JSON.vim'
" non github repos

 filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" ==普通设置==
"将默认剪贴板设置为系统剪贴板
set clipboard=unnamedplus
"自动将当前目录设定为当前文件的目录
set autochdir
" 关闭 vi 兼容模式
set nocompatible
" 不自动换行
set nowrap
" 自动语法高亮
syntax on
" 检测文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 在所有模式下都启用鼠标
set mouse=a
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap =b,s,<,>,[,],h,l
" 显示行号
set number
" 缩进设置
" 用空格代替制表符
set expandtab
set tabstop=4
" 设置按BackSpace的时候可以一次删除掉4个空格
set softtabstop=4
" 设定 << 和 >> 命令移动molokai时的宽度为 4
set shiftwidth=4
" language
au FileType scheme set tabstop=2
au FileType scheme set shiftwidth=2
au FileType javascript set tabstop=2
au FileType javascript set shiftwidth=2
set smarttab
set smartindent
" 历史记录
set history=1024
"禁止生成临时文件
set nobackup
set noswapfile
"循环搜索
set wrapscan
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"编码设置
set enc=utf-8
set fencs=utf-8,gbk,gb2312,ucs-bom,shift-jis,gb18030,cp936
" 语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn

" ==界面设置==
if has("gui_running")
    " set background=light 
    set lines=30 columns=90 " 新窗口
    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
else
    " set background=dark
endif
colorscheme molokai

"在第80个字符处显示一条线
hi ColorColumn guibg=#324248
set colorcolumn=80

" ==Python自动补全词典==
let g:pydiction_location = "/home/tioover/.vim/bundle/Pydiction/complete-dict"

" ==自动识别编码==
let g:fencview_autodetect = 1
let g:fencview_checklines = 10 

" ===less 转换==
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

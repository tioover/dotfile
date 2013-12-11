set nocompatible

" Vundle 设置
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" # 包列表
"Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
"Bundle 'fencview.vim'

" ## 编辑
"Bundle 'humiaozuzu/fcitx-status'
Bundle 'jiangmiao/auto-pairs'
"Bundle 'Raimondi/delimitMate'

" ## 界面
Bundle 'bling/vim-airline'
Bundle 'Yggdroot/indentLine'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'bronson/vim-trailing-whitespace'
" ### 配色
Bundle 'molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ciaranm/inkpot'
" ### 语法高亮
"Bundle 'TagHighlight'
"Bundle 'nginx.vim'
"Bundle 'JSON.vim'
"Bundle 'nono/jquery.vim'
"Bundle 'othree/html5.vim'
"Bundle 'groenewege/vim-less'
Bundle 'hallison/vim-markdown'
Bundle 'css_color.vim'
"Bundle 'pangloss/vim-javascript'

" ## 缩进
Bundle 'hynek/vim-python-pep8-indent'

" ## 语法检查
Bundle 'scrooloose/syntastic'

" ## 代码补全
Bundle "davidhalter/jedi"
Bundle 'Valloric/YouCompleteMe'
"Bundle 'othree/xml.vim'


" 通用配置
filetype plugin on  " 启用插件
filetype plugin indent on  " 加载插件缩进
set autochdir  " 自动将当前目录设定为当前文件的目录


" 编辑
set clipboard=unnamedplus  " 将默认剪贴板设置为系统剪贴板
set modeline  " 读取默认tab 设定
set history=1024  " 历史记录
set nobackup  " 禁止生成临时文件
set noswapfile  " 禁止生成临时文件
set backspace=2  " 使回格键正常处理indent, eol, start等
set whichwrap =b,s,<,>,[,],h,l  " 允许回格和光标键跨越行边界


" 界面
set completeopt-=preview  " 关闭预览窗口
set noerrorbells
set visualbell t_vb=  " 不触发响铃
set number  " 行号
set nowrap " 不自动换行
set cursorline  " 高亮当前行
syntax on  " 语法高亮
set ttyfast  " 增加滚动平滑
set lazyredraw  " 增加滚动平滑


" 搜索
set wrapscan  "循环搜索
set ignorecase  "搜索忽略大小写
"set hlsearch  "搜索逐字符高亮


" # 配色
colorscheme desert
"colorscheme inkpot
"colorscheme solarized
"colorscheme molokai


" 插件
" # 代码补全
" ## YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'

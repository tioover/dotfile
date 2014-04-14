set nocompatible
filetype off                  " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" 包列表
Bundle 'gmarik/vundle'
" Bundle 'humiaozuzu/fcitx-status'
" Bundle 'fencview.vim'
" Bundle 'tpope/vim-fugitive'

" # 缩进
Bundle 'hynek/vim-python-pep8-indent'

" # 界面
Bundle 'bling/vim-airline'
Bundle 'Yggdroot/indentLine'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'

" ## 配色
Bundle 'molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ciaranm/inkpot'

" # 语法高亮
Bundle 'TagHighlight'
Bundle 'derekwyatt/vim-scala'
" Bundle 'nginx.vim'
" Bundle 'JSON.vim'
" Bundle 'nono/jquery.vim'
" Bundle 'othree/html5.vim'
" Bundle 'groenewege/vim-less'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'hallison/vim-markdown'
Bundle 'css_color.vim'
"Bundle 'pangloss/vim-javascript'
Bundle 'wting/rust.vim'
" Bundle 'xolox/vim-misc'
" Bundle 'xolox/vim-easytags'

" # 语法检查
Bundle 'scrooloose/syntastic'

" # 代码补全
" Bundle "davidhalter/jedi"
Bundle "SirVer/ultisnips"
Bundle 'Valloric/YouCompleteMe'
Bundle 'honza/vim-snippets'
" Bundle 'othree/xml.vim'
Bundle 'jiangmiao/auto-pairs'
" Bundle 'Raimondi/delimitMate'


" 通用配置
filetype plugin on  " 启用插件
filetype plugin indent on  " 加载插件缩进
set autochdir  " 自动将当前目录设定为当前文件的目录


" 搜索
set wrapscan  "循环搜索
set ignorecase  "搜索忽略大小写
" set hlsearch  "搜索逐字符高亮


" 编辑
set clipboard=unnamedplus  " 将默认剪贴板设置为系统剪贴板
set modeline  " 读取默认tab 设定
set history=1024  " 历史记录
set nobackup  " 禁止生成临时文件
set noswapfile  " 禁止生成临时文件
set backspace=2  " 使回格键正常处理 indent, eol, start 等
set whichwrap =b,s,<,>,[,],h,l  " 允许回格和光标键跨越行边界

" #缩进
set autoindent smartindent cindent et sta sw=4 ts=4 sts=4
autocmd FileType lisp, javascript, scheme setlocal sw=2 ts=2 sts=2


" 界面
set completeopt-=preview  " 关闭预览窗口
set noerrorbells
set number  " 行号
set nowrap " 不自动换行
set cursorline  " 高亮当前行
syntax on  " 语法高亮
set ttyfast  " 增加滚动平滑
set lazyredraw  " 增加滚动平滑

" # 配色
set background=dark
"colorscheme desert
"colorscheme inkpot
colorscheme solarized
"colorscheme molokai


" 插件

" # 按键
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nmap <F8> :TagbarToggle<CR>
nmap <F5> :UpdateTypesFile<CR>
nmap <F4> :w<CR>
let g:ycm_key_invoke_completion = '<F3>'
let g:UltiSnipsExpandTrigger="<c-\\>"
let g:UltiSnipsListSnippets="<c-s-tab>"

" # YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_error_symbol = '✖'
let g:ycm_warning_symbol = '∆'
let g:ycm_seed_identifiers_with_syntax = 0
" let g:ycm_register_as_syntastic_checker = 0

" # Syntastic
let g:statline_syntastic = 0  " 插件兼容设定
let g:syntastic_check_on_open=1  " 在打开文件的时候检查
let g:syntastic_error_symbol = '✖'
let g:syntastic_warning_symbol = '∆'


if ! exists('g:TagHighlightSettings')
    let g:TagHighlightSettings = {}
endif
let TagHighlightSettings['TagFileName'] = '.tags'
let TagHighlightSettings['TypesFilePrefix'] = '.types'

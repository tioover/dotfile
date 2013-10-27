" #Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" ##包列表
Bundle 'gmarik/vundle'

Bundle 'humiaozuzu/fcitx-status'
Bundle 'tpope/vim-fugitive'

" ###界面
Bundle 'majutsushi/tagbar'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'Yggdroot/indentLine'
Bundle 'css_color.vim'
"Bundle 'Lokaltog/powerline'

" ####配色
Bundle 'molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ciaranm/inkpot'

" ####语法高亮
Bundle 'TagHighlight'
Bundle 'nginx.vim'
Bundle 'JSON.vim'
Bundle 'nono/jquery.vim'
Bundle 'othree/html5.vim'
Bundle 'groenewege/vim-less'
Bundle 'hallison/vim-markdown'
"Bundle 'pangloss/vim-javascript'


" ###代码补全

" ####代码片段
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle "honza/vim-snippets"
"Bundle 'drmingdrmer/xptemplate'

Bundle 'ervandew/supertab'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Rip-Rip/clang_complete'
Bundle 'osyo-manga/neocomplcache-clang_complete'
"Bundle 'Raimondi/delimitMate'
"Bundle 'OmniCppComplete'
Bundle 'othree/xml.vim'
"Bundle 'tpope/vim-surround'
Bundle 'jiangmiao/auto-pairs'

" ###语法检查
Bundle 'scrooloose/syntastic'

filetype plugin indent on



" #一般设置
filetype plugin on  " 启用插件
set nocompatible  " 关闭Vi兼容模式
set autochdir  " 自动将当前目录设定为当前文件的目录



" #界面
syntax on  " 语法高亮
set number  " 行号
set cursorline  " 高亮当前行
"autocmd filetype python setlocal set cursorcolumn  " 在使用Python 语言时高亮当前列
autocmd filetype python setlocal completeopt-=preview  " 关闭Python 补全中的预览
set completeopt-=preview
set nowrap  " 不自动换行
set noerrorbells  " 不触发响铃
set visualbell " 可视化响铃

" ## 80 列处显示一排线
"let &colorcolumn=80

" ##增强代码着色
"autocmd BufRead UpdateTypesFile

" ##配色
colorscheme desert
"colorscheme inkpot
"colorscheme solarized
"colorscheme molokai

" ##GUI
if has("gui_running")
    "set background=dark
    set guifont=Meslo\ LG\ S\ 10  " 字体设置
    set guioptions-=m  " 隐藏菜单栏
    set guioptions-=T  " 隐藏工具栏
    hi colorcolumn guibg=#666666
else
    "set background=dark
endif

" ##CTRL P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ## Tag bar
nmap <F8> :TagbarToggle<CR>



" #编辑
set clipboard=unnamedplus  " 将默认剪贴板设置为系统剪贴板
set modeline  " 读取默认tab 设定
set history=1024 " 历史记录
set nobackup  " 禁止生成临时文件
set noswapfile  " 禁止生成临时文件
set backspace=2  " 使回格键（backspace）正常处理indent, eol, start等
set whichwrap =b,s,<,>,[,],h,l  " 允许backspace和光标键跨越行边界



" # 搜索
set wrapscan "循环搜索
set ignorecase "搜索忽略大小写
set hlsearch "搜索逐字符高亮




" #缩进
set autoindent smartindent cindent et sta sw=4 ts=4 sts=4
autocmd FileType scheme setlocal sw=2 ts=2 sts=2
autocmd FileType javascript setlocal sw=2 ts=2 sts=2
"autocmd FileType python setlocal foldmethod=indent



" #本地化和编码 
" ## 编码
set encoding=utf-8  " 默认编码

let g:fencview_autodetect = 1  " 插件打开文件自动识别编码
let g:fencview_checklines = 10  " 插件通过检查十行来识别编码

" ##修复无法显示菜单

if has("gui_running")
    set langmenu=zh_CN.UTF-8 " 菜单语言
    set imcmdline   
    source $VIMRUNTIME/delmenu.vim   
    source $VIMRUNTIME/menu.vim
endif


" #自动补全

" ##SuperTab
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-U>" " SuperTab 调用NeoComplCache

" ## NeoComplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_disable_auto_complete = 1
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags



" #语法检查
let g:statline_syntastic = 0 " 插件兼容设定
let g:syntastic_check_on_open=1 " 在打开文件的时候检查

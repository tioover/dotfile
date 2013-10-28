set nocompatible

" Vundle 设置
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" " 包列表
" " " 功能
"Bundle 'humiaozuzu/fcitx-status'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/fencview.vim'
" " " 界面
Bundle 'bling/vim-airline'
Bundle 'Yggdroot/indentLine'

" " " 配色
Bundle 'molokai'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ciaranm/inkpot'

" " " " 语法高亮
Bundle 'TagHighlight'
Bundle 'nginx.vim'
Bundle 'JSON.vim'
Bundle 'nono/jquery.vim'
Bundle 'othree/html5.vim'
Bundle 'groenewege/vim-less'
Bundle 'hallison/vim-markdown'
Bundle 'css_color.vim'
"Bundle 'pangloss/vim-javascript'

" " " 语法检查
Bundle 'scrooloose/syntastic'

" " " 代码补全
Bundle 'ervandew/supertab'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Rip-Rip/clang_complete'
Bundle 'osyo-manga/neocomplcache-clang_complete'
"Bundle 'Raimondi/delimitMate'
"Bundle 'OmniCppComplete'
Bundle 'othree/xml.vim'
"Bundle 'tpope/vim-surround'
Bundle 'jiangmiao/auto-pairs'
Bundle 'davidhalter/jedi-vim'

" " " " 代码片段
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle "honza/vim-snippets"


" Vim 通用配置
filetype plugin on  " 启用插件
filetype plugin on  " 加载插件缩进
set autochdir  " 自动将当前目录设定为当前文件的目录

" #编辑
set clipboard=unnamedplus  " 将默认剪贴板设置为系统剪贴板
set modeline  " 读取默认tab 设定
set history=1024  " 历史记录
set nobackup  " 禁止生成临时文件
set noswapfile  " 禁止生成临时文件
set backspace=2  " 使回格键（backspace）正常处理indent, eol, start等
set whichwrap =b,s,<,>,[,],h,l  " 允许backspace和光标键跨越行边界

" 界面
"set completeopt-=preview  " 关闭预览窗口
set noerrorbells
set visualbell t_vb=  " 不触发响铃
set number  " 行号
set nowrap " 不自动换行
set cursorline  " 高亮当前行
syntax on  " 语法高亮
set ttyfast  " 增加滚动平滑
set lazyredraw  " 增加滚动平滑
"hi colorcolumn guibg=#666666
"let &colorcolumn=80  " 80 列处显示一排线
"let g:airline#extensions#tabline#enabled = 1  " airline 状态栏始终启用

" " 配色
"colorscheme desert
"colorscheme inkpot
"colorscheme solarized
colorscheme molokai


" 功能
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nmap <F8> :TagbarToggle<CR>



" 搜索
set wrapscan  "循环搜索
set ignorecase  "搜索忽略大小写
"set hlsearch  "搜索逐字符高亮


" 编码
set encoding=utf-8  " 默认编码
let g:fencview_autodetect = 1  " 插件打开文件自动识别编码
let g:fencview_checklines = 10  " 插件通过检查十行来识别编码

" 语法检查
let g:statline_syntastic = 0  " 插件兼容设定
let g:syntastic_check_on_open=1  " 在打开文件的时候检查

" 缩进
set autoindent smartindent cindent et sta sw=4 ts=4 sts=4
autocmd FileType lisp, javascript, scheme setlocal sw=2 ts=2 sts=2
"autocmd FileType python setlocal foldmethod=indent


" 自动补全

" " SuperTab
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-U>"  " SuperTab 调用NeoComplCache
" " NeoComplcache

" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_disable_auto_complete = 1
if !exists('g:neocomplcache_force_omni_patterns')
    let g:neocomplcache_force_omni_patterns={}
endif
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" " Jedi
"let g:jedi#auto_initialization = 0
"let g:jedi#auto_vim_configuration = 0
"
"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = "<leader>d"
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-Space>"
"let g:jedi#rename_command = "<leader>r"
"let g:jedi#show_call_signatures = "1"

" " 兼容
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#auto_vim_configuration = 0
let g:neocomplcache_force_omni_patterns.python = '[^. \t]\.\w*'

" Python
"autocmd filetype python setlocal set cursorcolumn  " 在使用Python 语言时高亮当前列
autocmd filetype python setlocal completeopt-=preview  " 关闭Python 补全中的预览

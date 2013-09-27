" # Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" ## Bundles
Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'FencView.vim'
Bundle 'kien/ctrlp.vim'
"Bundle 'bling/vim-airline'
"Bundle 'Lokaltog/powerline'
Bundle 'humiaozuzu/fcitx-status'
" coding
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
"Bundle 'Raimondi/delimitMate'
"Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'drmingdrmer/xptemplate'
Bundle 'ervandew/supertab'
"Bundle 'tpope/vim-surround'
" color
Bundle 'molokai'
Bundle 'altercation/vim-colors-solarized'
" language
Bundle 'TagHighlight'
Bundle 'OmniCppComplete'
""Bundle 'pythoncomplete'
Bundle 'othree/xml.vim'
""Bundle 'hdima/python-syntax'
Bundle 'nginx.vim'
Bundle 'JSON.vim'
"Bundle 'pangloss/vim-javascript'
Bundle 'nono/jquery.vim'
Bundle 'othree/html5.vim'
Bundle 'groenewege/vim-less'
Bundle 'hallison/vim-markdown'
" Bundle 'klen/python-mode'

" ## Bundles END

filetype plugin indent on
" # Vundle END


" # Common
set modeline "读取默认tab 设定
set clipboard=unnamedplus "将默认剪贴板设置为系统剪贴板
set autochdir "自动将当前目录设定为当前文件的目录
set nowrap "不自动换行
syntax on " 语法高亮
filetype plugin on " 检测文件类型插件
set mouse=a " 启用鼠标
set number
set history=1024 " 历史记录
set nobackup " 禁止生成临时文件
set noswapfile " 禁止生成临时文件
set backspace=2 " 使回格键（backspace）正常处理indent, eol, start等
set whichwrap =b,s,<,>,[,],h,l " 允许backspace和光标键跨越行边界
set foldlevel=99
set completeopt-=preview
set noerrorbells
set visualbell
set t_vb=
let g:statline_syntastic = 0 " 插件兼容设定
let g:syntastic_check_on_open=1 " 在打开文件的时候检查
let g:ctrlp_map = '<c-p>' " CTRL P
let g:ctrlp_cmd = 'CtrlP'

" ## Autocomplete
" ### SuperTab
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-U>" " SuperTab 调用NeoComplCache

" #### SuperTab with XPTemplate
" avoid key conflict
let g:SuperTabMappingForward = '<Plug>supertabKey'

" if nothing matched in xpt, try supertab
let g:xptemplate_fallback = '<Plug>supertabKey'

" xpt uses <Tab> as trigger key
let g:xptemplate_key = '<Tab>'

" " use <tab>/<S-tab> to navigate through pum. Optional
" let g:xptemplate_pum_tab_nav = 1

" " xpt triggers only when you typed whole name of a snippet. Optional
" let g:xptemplate_minimal_prefix = 'full'


" ### NeoComplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_disable_auto_complete = 1

"inoremap <expr><Tab>  pumvisible() ? "\<C-n>" : "\<Tab>"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" ## Autocomplete END

" ## Language and encode
set langmenu=zh_CN.UTF-8 " 菜单语言
set imcmdline   
source $VIMRUNTIME/delmenu.vim   
source $VIMRUNTIME/menu.vim
set helplang=cn " 帮助语言
let g:fencview_autodetect = 1 " 插件打开文件自动识别编码
let g:fencview_checklines = 10 " 插件通过检查十行来识别编码
" ## Language and encode END

" ## Search
set wrapscan "循环搜索
set ignorecase "搜索忽略大小写
set hlsearch "搜索逐字符高亮
" ## Search END

" ## Indent
filetype indent on " 缩进文件
" to see http://linux-wiki.cn/wiki/zh-hans/Vim代码缩进设置
set autoindent smartindent cindent et sta sw=4 ts=4 sts=4
autocmd FileType scheme setlocal sw=2 ts=2 sts=2
autocmd FileType javascript setlocal sw=2 ts=2 sts=2
autocmd FileType python setlocal foldmethod=indent
" ## Indent END

" #Common END

" #UI
colorscheme molokai
"colorscheme solarized
set cursorline " 高亮当前行
set cursorcolumn " 高亮当前列

" ## 80 line
"hi ColorColumn guibg=#304046
"set colorcolumn=80
" ## 80 line end


" ## PowerLine
set laststatus=2
set t_Co=256
" ## PowerLine END



" ##GUI
if has("gui_running")
    "set background=light
    set guifont=DejaVu\ Sans\ Mono\ 10
    set lines=30 columns=90 " 新窗口
    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    set guioptions=
else
    "set background=dark
endif
" ##GUI END

" #UI END


" # Map
"map <C-i> <leader>ig " indent guide
nmap <F8> :TagbarToggle<CR>

" # Map END

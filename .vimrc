" # Vundle

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'majutsushi/tagbar'
Plugin 'molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ciaranm/inkpot'
Plugin 'derekwyatt/vim-scala'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'hallison/vim-markdown'
Plugin 'css_color.vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'wting/rust.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
call vundle#end()




" # 一般设置

set autochdir
set number
filetype plugin on
filetype plugin indent on
set wrapscan "循环搜索
set ignorecase "搜索忽略大小写
set clipboard=unnamedplus " 将默认剪贴板设置为系统剪贴板
set modeline " 读取默认tab 设定
set history=1024 " 历史记录
set nobackup " 禁止生成临时文件
set noswapfile " 禁止生成临时文件
set backspace=2 " 使回格键正常处理 indent, eol, start 等
set whichwrap =b,s,<,>,[,],h,l " 允许回格和光标键跨越行边界
set noerrorbells

" ## 显示
syntax on
set number " 行号
set nowrap " 不自动换行
set cursorline " 高亮当前行
set completeopt-=preview " 关闭预览窗口
set list " 显示行尾空格和tab
set listchars=tab:>-,trail:- " 美化

" # 插件设置
set laststatus=2  " airline 始终显示
map <C-n> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>
let g:ycm_key_invoke_completion = '<F3>'
let g:UltiSnipsExpandTrigger="<c-\\>"
let g:UltiSnipsListSnippets="<c-s-tab>"

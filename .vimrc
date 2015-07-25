" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" - Vim 插件
    Plugin 'molokai'
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'ciaranm/inkpot'
    Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
    Plugin 'bling/vim-airline'
    Plugin 'Yggdroot/indentLine'
    Plugin 'jiangmiao/auto-pairs'

    Plugin 'wting/rust.vim'
    Plugin 'hynek/vim-python-pep8-indent'
    Plugin 'hallison/vim-markdown'
    Bundle 'cespare/vim-toml'
    Bundle 'pangloss/vim-javascript'
    Plugin 'kchmck/vim-coffee-script'

    Plugin 'scrooloose/nerdtree'
    Plugin 'majutsushi/tagbar'
    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'
    Plugin 'scrooloose/syntastic'
    Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on


" 通用

set autochdir
set number
syntax on
set cursorline
set list
set listchars=tab:>-,trail:-
set wrapscan
set hlsearch
set incsearch
set ignorecase
set history=1024
set nobackup
set noswapfile
set autoread
set whichwrap =b,s,<,>,[,],h,l
set nowrap
set completeopt-=preview


" 缩进
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smarttab



" 插件
let mapleader = ","

set laststatus=2
map <Leader>f :NERDTreeToggle<CR>
map <Leader>s :w<CR>

let g:UltiSnipsExpandTrigger="<c-\\>"
" - Tagbar
    let g:tagbar_ctags_bin = '/usr/local/Cellar/ctags/5.8_1/bin/ctags'
    nmap <Leader>t :TagbarToggle<CR>
    let g:tagbar_type_rust = {
       \ 'ctagstype' : 'rust',
       \ 'kinds' : [
           \'T:types,type definitions',
           \'f:functions,function definitions',
           \'g:enum,enumeration names',
           \'s:structure names',
           \'m:modules,module names',
           \'c:consts,static constants',
           \'t:traits,traits',
           \'i:impls,trait implementations',
       \]
       \}


" My Var
let g:CSCOPE_DB="$HOME/word/cscope.out"
"-------------------------------------------------
" encoding
set encoding=utf-8
"-------------------------------------------------
"set nocompatible
"call pathogen#infect()
"-------------------------------------------------
" vundle
" install
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set nocompatible          " be iMproved
filetype off               " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
filetype plugin indent on   " required!
"-------------------------------------------------
syntax enable
set background=dark
"colorscheme solarized
"-------------------------------------------------
" My Bundles here:
Bundle 'The-NERD-tree'
Bundle 'winmanager'
Bundle 'bufexplorer.zip'
Bundle 'minibufexpl.vim'
Bundle 'vim-BookMarks'
Bundle 'AutoComplPop'
Bundle 'omnicppcomplete'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'majutsushi/tagbar'
Bundle 'derekwyatt/vim-fswitch'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'lookupfile'
Bundle 'genutils'
Bundle 'easymotion/vim-easymotion'
"-------------------------------------------------
"powerline{
 set guifont=PowerlineSymbols\ for\ Powerline
 set nocompatible
 set t_Co=256
 let g:Powerline_symbols = 'fancy'
 "}
"------------------------------------------------
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set tags=tags;/
"------------------------------------------------
" lookupfile setting
" """"""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
if filereadable("./filenametags")               "设置tag文件的名字
  let g:LookupFile_TagExpr = '"./filenametags"'
endif
" 映射LookupFile为,lk
nmap <silent> <leader>lk :LUTags<cr>
" 映射LUBufs为,ll
nmap <silent> <leader>ll :LUBufs<cr>
" 映射LUWalk为,lw
nmap <silent> <leader>lw :LUWalk<cr>
"------------------------------------------------
" Cscope setting
" """"""""""""""""""""""""""""""
"if has("cscope") && filereadable("/usr/bin/cscope")
  "set csprg=/usr/bin/cscope       "指定用来执行cscope的命令
  "set csto=0                      "设置cstag命令查找次序：0先找cscope数据库再找标签文件；1先找标签文件再找cscope数据库
  "set cst                         "同时搜索cscope数据库和标签文件
  "set cscopequickfix=s-,c-,d-,i-,t-,e-  "使用QuickFix窗口来显示cscope查找结果
  "set nocsverb
  "if filereadable("cscope.out")   "若当前目录下存在cscope数据库，添加该数据库到vim
    "echo "run cs add cscope.out"
    "cs add cscope.out
  "elseif $CSCOPE_DB != ""         "否则只要环境变量CSCOPE_DB不为空，则添加其指定的数据库到vim
    "echo "run cs add $CSCOPE_DB"
    "cs add $CSCOPE_DB
  "endif
  "set csverb
"endif
set cscopequickfix=s-,c-,d-,i-,t-,e-
"echo "run cs add" g:CSCOPE_DB
cs add g:CSCOPE_DB
"------------------------------------------------
nmap <F3> :NERDTreeToggle  <CR>
let NERDTreeWinSize = 24
let g:NERDTreeDirArrows = 0
let NERDTreeShowBookmarks=1
"------------------------------------------------
nmap <F2> :BufExplorer  <CR>
nmap <F4> :TagbarToggle  <CR>
nmap <F7> :FSSplitLeft  <CR>
"------------------------------------------------
map <F6> :CtrlPFunky <CR>
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_mruf_max=500
"------------------------------------------------
let g:vbookmark_bookmarkSaveFile = $HOME . '/.vimbookmark'
"------------------------------------------------
filetype plugin on
filetype indent on
syntax on
filetype on
set hlsearch
set incsearch
set ignorecase
set nu
set laststatus=2
set mouse=v
set showmatch
set matchtime=1
set cursorline
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set smartcase
set smartindent
set autowrite
set confirm
set autoread


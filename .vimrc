" My Var
"let g:PRO_PATH="$HOME/work/"
"把 <leader> 设置成空格
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"
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
colorscheme default 
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
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'majutsushi/tagbar'
Bundle 'derekwyatt/vim-fswitch'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'lookupfile'
Bundle 'genutils'
Bundle 'easymotion/vim-easymotion'
Bundle 'tczengming/autoload_cscope.vim'
Bundle 'nathanaelkane/vim-indent-guides'
"-------------------------------------------------
"powerline{
 set guifont=PowerlineSymbols\ for\ Powerline
 set nocompatible
 set t_Co=256
 let g:Powerline_symbols = 'fancy'
 "}
"------------------------------------------------
nmap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> :!cscope -Rbq<CR>
set tags=tags;/
"------------------------------------------------
" lookupfile setting
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
if filereadable("./filenametags")
  let g:LookupFile_TagExpr = '"./filenametags"'
endif
" 映射LookupFile为,lk
nmap <silent> <leader>lk :LUTags<CR>
" 映射LUBufs为,ll
nmap <silent> <leader>ll :LUBufs<CR>
" 映射LUWalk为,lw
nmap <silent> <leader>lw :LUWalk<CR>
"------------------------------------------------
" Cscope setting
set cscopequickfix=s-,c-,d-,i-,t-,e-
":cnext
":cprev
":cw
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cword>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"------------------------------------------------
nmap <F3> :NERDTreeToggle <CR>
let NERDTreeWinSize = 24
let g:NERDTreeDirArrows = 0
let NERDTreeShowBookmarks=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 显示隐藏文件
let NERDTreeShowHidden=1
"------------------------------------------------
nmap <F2> :BufExplorer <CR>
nmap <F4> :TagbarToggle <CR>
nmap <F7> :FSSplitLeft <CR>
"------------------------------------------------
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(bmp|gif|jpg|png|jpeg)$',
  \ }
map <F6> :CtrlPFunky <CR>
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_mruf_max=500
let g:ctrlp_max_height = 20
let g:ctrlp_by_filename = 1
"------------------------------------------------
let g:vbookmark_bookmarkSaveFile = $HOME . '/.vimbookmark'
"------------------------------------------------
" vim-indent-guides
"不随 vim 自启动
let g:indent_guides_enable_on_vim_startup=0
" 从第一层开始可视化显示缩进
let g:indent_guides_start_level=1
" 色块宽度
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=2
"hi IndentGuidesOdd guibg=red ctermbg=8
"hi IndentGuidesEven guibg=green ctermbg=2
nmap <silent> <Leader>v :IndentGuidesToggl<CR>
"------------------------------------------------
filetype plugin on
syntax enable
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
set smartcase
set autowrite
set confirm
"set autoread
set noswapfile
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 粘贴代码时取消自动缩进
set pastetoggle=<F11>
" 多窗口改变大小
nmap w= :resize +3<CR>
nmap w- :resize -3<CR>
nmap w, :vertical resize -3<CR>
nmap w. :vertical resize +3<CR>
" Fast saving
nmap <leader>w :w!<CR>
" A buffer becomes hidden when it is abandoned
set hid

"把 <leader> 设置成空格
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"
"-------------------------------------------------
" encoding
set encoding=utf-8
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
set t_Co=256
set background=dark
colorscheme 256-jungle
"colorscheme molokai 
"-------------------------------------------------
" molokai configure
"let g:molokai_original = 1
"let g:rehash256 = 1
"-------------------------------------------------
" My Bundles here:
Bundle 'The-NERD-tree'
Bundle 'winmanager'
Bundle 'bufexplorer.zip'
Bundle 'minibufexpl.vim'
Bundle 'vim-BookMarks'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'majutsushi/tagbar'
Bundle 'derekwyatt/vim-fswitch'
Bundle 'Valloric/YouCompleteMe'
Bundle 'rdnetto/YCM-Generator'
Bundle 'lookupfile'
Bundle 'genutils'
Bundle 'easymotion/vim-easymotion'
Bundle 'tczengming/autoload_cscope.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Yggdroot/indentLine'
"Bundle 'Lokaltog/vim-powerline'
"Bundle 'powerline/fonts'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'tomasr/molokai'
Bundle 'scrooloose/nerdcommenter'
Bundle 'jiangmiao/auto-pairs'
Bundle 'mhinz/vim-startify'
Bundle 'hynek/vim-python-pep8-indent'
" press F7 key to use vim-flake8
Bundle 'nvie/vim-flake8'
"easytags 自动更新tags
"-------------------------------------------------
"airline{
 let g:airline_powerline_fonts = 1
 " 关闭状态显示空白符号计数,这个对我用处不大"
 let g:airline#extensions#whitespace#enabled = 0
 let g:airline#extensions#whitespace#symbol = '!'
"}
"-------------------------------------------------
"powerline{
" set guifont=PowerlineSymbols\ for\ Powerline
 "set nocompatible
 "set t_Co=256
 "let g:Powerline_symbols = 'fancy'
"}
"------------------------------------------------
nnoremap <F12> :!$HOME/.vim/tools/lookfile.sh<CR>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> :!cscope -Rbq<CR> :YcmGenerateConfig<CR>
set tags=tags;/
"------------------------------------------------
" lookupfile setting
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 0     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
if filereadable("./filenametags")
  let g:LookupFile_TagExpr = '"./filenametags"'
endif
" 映射LookupFile为,lk
nnoremap <silent> <leader>lk :LUTags<CR>
" 映射LUBufs为,ll
nnoremap <silent> <leader>ll :LUBufs<CR>
" 映射LUWalk为,lw
nnoremap <silent> <leader>lw :LUWalk<CR>
"------------------------------------------------
" Cscope setting
set cscopequickfix=s-,c-,d-,i-,t-,e-
":cnext
":cprev
":cw
nnoremap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-@>f :cs find f <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-@>i :cs find i ^<C-R>=expand("<cword>")<CR>$<CR>
nnoremap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"------------------------------------------------
nnoremap <F3> :NERDTreeToggle <CR>
let NERDTreeWinSize = 24
let g:NERDTreeDirArrows = 0
let NERDTreeShowBookmarks=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 显示隐藏文件
let NERDTreeShowHidden=1
"------------------------------------------------
nnoremap <F2> :BufExplorer <CR>
nnoremap <F4> :TagbarToggle <CR>
nnoremap <F7> :FSSplitLeft <CR>
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
"-------------------------------------------------
" indentLine
let g:indentLine_enabled = 1
nnoremap <Leader>v1 :IndentGuidesDisable<CR>:IndentLinesToggle<CR>
"------------------------------------------------
" vim-indent-guides
"不随 vim 自启动
let g:indent_guides_enable_on_vim_startup= 0
" 从第一层开始可视化显示缩进
let g:indent_guides_start_level=1
" 色块宽度
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=8
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=2
hi IndentGuidesOdd guibg=red ctermbg=8
hi IndentGuidesEven guibg=green ctermbg=2
nnoremap <silent> <Leader>v2 :IndentLinesDisable<CR>:IndentGuidesToggle<CR>
"------------------------------------------------
" nnoremap <F2> :setlocal number! number?<CR>
" nnoremap <F8> :set hlsearch! hlsearch?<CR>
" 粘贴代码时取消自动缩进
setlocal pastetoggle=<F11>
" nnoremap <leader>r :make<CR>
nnoremap <leader>r :!make<CR>
" 多窗口改变大小
nnoremap <leader>= :resize +3<CR>
nnoremap <leader>- :resize -3<CR>
nnoremap <leader>, :vertical resize -3<CR>
nnoremap <leader>. :vertical resize +3<CR>
" Fast saving
nnoremap <leader>w :w!<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
autocmd! bufwritepost .vimrc source %    " .vimrc修改之后自动加载
inoremap jk <esc>
inoremap <esc> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
inoremap <C-g> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
"------------------------------------------------
filetype plugin on
syntax enable
syntax on
filetype on
" 高亮搜索
set hlsearch
" 搜索时实时匹配
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
set autoread
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
" A buffer becomes hidden when it is abandoned
set hid
"------------------------------------------------
" YouCompleteMe Configure
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" 按,jd 会跳转到定义
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_confirm_extra_conf=0
" 补全完成后自动关闭preview窗口
let g:ycm_autoclose_preview_window_after_completion=1
" 不显示预览窗口
set completeopt=longest,menu
" 语法关键字补全"
let g:ycm_seed_identifiers_with_syntax=1    
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 使用ctags生成的tag文件,性能会下降，所以不启用
" let g:ycm_collect_identifiers_from_tags_files = 0
" 修改对C函数的补全快捷键，默认是CTRL + space
let g:ycm_key_invoke_completion = '<C-t>'
" 默认使用python2,如果需要补全python3,打开以下选项
" let g:ycm_python_binary_path = '/usr/bin/python3'

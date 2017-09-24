set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"  Pligin Install
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets' " 代码片段补全
Plugin 'vim-syntastic/syntastic' " 语法错误检查
Plugin 'nathanaelkane/vim-indent-guides' " 显示缩进链接线
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on
set number
set tabstop=4 " 制表符宽度
set backspace=2 " 设置mac上delete键可用
set cursorline
set cursorcolumn
set softtabstop=4 " 让vim把连续数量的空格视为一个制表符
set expandtab " 将制表符扩展为空格
set helplang=cn
set autoindent " 自动缩进
set shiftwidth=4 " 缩进的空格
set ignorecase " 搜索时忽略大小写
set nohlsearch " 高亮显示查找到的字符串
set mouse=a " 设置使用鼠标
set ruler " 右下角显示光标位置
set showcmd " 显示未敲完的命令
set cmdheight=1 " 设置命令行的数为1
set laststatus=2 " 设置显示状态栏(默认为1，无法显示)
set incsearch " 在输入搜索字符串的同时就开始搜索已经输入的部分
set nowrap " 就在一行
set cursorline " 突出显示当前行
set showmatch " 插入括号时，短暂的跳转到匹配的对应括号
set matchtime=2 " 短暂跳转匹配括号的时间
set smartindent " 开启新行时使用智能自动缩进
set wildmenu " vim自身命令模式智能补全
set nocompatible " 关闭兼容模式
filetype indent on " 自适应不同语言的智能缩进
" 基于缩进或语法进行代码折叠
" za打开或关闭当前折叠；zM关闭所有折叠；zR打开所有折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" 加载主题配色
syntax enable
set background=dark
colorscheme solarized
" 高亮当前鼠标行
" highlight CursorLine   cterm=NONE ctermbg=gray ctermfg=NONE guibg=NONE guifg=NONE
" highlight CursorColumn cterm=NONE ctermbg=gray ctermfg=NONE guibg=NONE guifg=NONE

" NERDTree 设置
map <F1> :NERDTreeToggle<CR>
"ltiSnips的代码块补全
let g:UltiSnipsListSnippets="<C-i>" "弹出UltiSnips的可用列表,由于不常用, 所以这里设置成了特殊的<C-i>映射
let g:UltiSnipsExpandTrigger="<C-z>" "插入模式下直接通过<C-z>键来触发UltiSnips的代码块补全
let g:UltiSnipsJumpForwardTrigger="<C-f>" "<C-f>跳转的到下一个代码块可编辑区
let g:UltiSnipsJumpBackwardTrigger="<C-b>" "<C-b>跳转到上一个代码块可编辑区

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup = 1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level = 2
" 色块宽度
let g:indent_guides_guide_size = 1
" 快捷键 tab 开/关缩进可视化
map	<Tab> :IndentGuidesToggle<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

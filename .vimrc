setlocal noswapfile " 不要生成swap文件

set bufhidden=hide " 当buffer被丢弃的时候隐藏它

set number " 显示行号

set cursorline " 突出显示当前行

set ruler " 打开状态栏标尺


set softtabstop=4 " 使得按退格键时可以一次删掉 2 个空格

set nobackup " 覆盖文件时不备份

set autochdir " 自动切换当前目录为当前文件所在的目录

set backupcopy=yes " 设置备份时的行为为覆盖

set hlsearch " 搜索时高亮显示被找到的文本

set noerrorbells " 关闭错误信息响铃

set novisualbell " 关闭使用可视响铃代替呼叫

set t_vb= " 置空错误铃声的终端代码

set matchtime=2 " 短暂跳转到匹配括号的时间

set magic " 设置魔术

set smartindent " 开启新行时使用智能自动缩进

set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符

set cmdheight=1 " 设定命令行的行数为 1

set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)

set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ Ln\ %l,\ Col\ %c/%L%) " 设置在状态行显示的信息

set foldenable " 开始折叠

set foldmethod=syntax " 设置语法折叠

set foldcolumn=0 " 设置折叠区域的宽度

setlocal foldlevel=1 " 设置折叠层数为 1

nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠

" 关闭vi的一致性模式
set nocompatible
"
set backspace=indent,eol,start

set showcmd

set hidden

"
set history=1000

"
set nobackup
set nowritebackup
set noswapfile

set cursorline
"set cursorcolumn

set showmatch

set autoindent
set cindent

set cmdheight=2

set updatetime=300

set shortmess+=c

syntax enable
syntax on

set t_Co=256

"set ignorecase
" 设置在vim中可以使用鼠标
set mouse=a

set tabstop=4
set shiftwidth=4
"set softtabstop=4
"set smarttab

set expandtab
%retab!

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"set colorcolumn=81
set cc=90
highlight CursorLine cterm=NONE ctermbg=blue ctermfg=white
"highlight ColorColumn guibg=Red

"turn next file
map <C-n> :bn<CR>

set nocompatible               " be iMproved
filetype off                   " required!


"curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 
     
" let vim plug manage, required
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/vim-easymotion'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'https://github.com/Lokaltog/vim-powerline.git'
"Plug 'jiangmiao/auto-pairs'
Plug 'kien/ctrlp.vim'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'joshdick/onedark.vim'
Plug 'ludovicchabant/vim-gutentags'
call plug#end()

"
" vim-powerline setting
set laststatus=2
let g:Powerline_symbols='unicode'
set encoding=utf8

colorscheme onedark


" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

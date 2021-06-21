" 关闭vi的一致性模式
set nocompatible
"
set backspace=indent,eol,start

"显示行号
set number
set numberwidth=1
"
set ruler
"
"set nowrap

"
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
Plug 'https://github.com/nathanaelkane/vim-indent-guides.git'
Plug 'https://github.com/Lokaltog/vim-powerline.git'
Plug 'jiangmiao/auto-pairs'
Plug 'NLKNguyen/papercolor-theme'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/FuzzyFinder'
Plug 'vim-scripts/L9'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"
" vim-powerline setting
set laststatus=2
let g:Powerline_symbols='unicode'
set encoding=utf8

set background=dark
colorscheme PaperColor

" nerd tree
nmap <leader>nt :NERDTree<cr>:set rnu<cr>
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.$','\~$']
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos=1

" nerd commenter
let NERDShutUp=1

map <c-h> ,c<space>

let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

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

"
set history=1000

"
set nobackup
set noswapfile

set cursorline
"set cursorcolumn

set showmatch

set autoindent
set cindent

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

" vundle 设置
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible               " be iMproved
filetype off                   " required!
 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
     
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'ctrlp.vim'
Plugin 'https://github.com/nathanaelkane/vim-indent-guides.git'
Plugin 'https://github.com/Lokaltog/vim-powerline.git'
Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'jiangmiao/auto-pairs'

Plugin 'NLKNguyen/papercolor-theme'

" ...
call vundle#end()            " required
filetype plugin indent on    " required
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

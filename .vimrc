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

"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" vundle 设置
set nocompatible               " be iMproved
filetype off                   " required!
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
     
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
  
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'ctrlp.vim'
" ...
  
filetype plugin indent on     " required!
    "
    " Brief help  -- \u6b64\u5904\u540e\u9762\u90fd\u662fvundle\u7684\u4f7f\u7528\u547d\u4ee4
    " :BundleList          - list configured bundles
    " :BundleInstall(!)    - install(update) bundles
    " :BundleSearch(!) foo - search(or refresh cache first) for foo
    " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
    "
    " see :h vundle for more details or wiki for FAQ
    " NOTE: comments after Bundle command are not allowed..
    "=========================================================================


" vim-powerline Download
Bundle 'https://github.com/Lokaltog/vim-powerline.git'

filetype plugin indent on
"
" vim-powerline setting
set laststatus=2
set t_Co=256
let g:Powerline_symbols='unicode'
set encoding=utf8

" nerd tree
Bundle 'The-NERD-tree'
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
Bundle 'The-NERD-Commenter'

let NERDShutUp=1

map <c-h> ,c<space>

Bundle 'https://github.com/nathanaelkane/vim-indent-guides.git'

let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vumdle插件管理
Plugin 'gmarik/vundle.vim'

" 代码
Plugin 'Mizuchi/STL-Syntax'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'tpope/vim-surround'

" Vim主题
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin  'godlygeek/csapprox'
"状态栏增强
Plugin 'bling/vim-airline'
" 多语言语法检查
Plugin 'scrooloose/syntastic'
" 快速去行尾空格 [, + <Space>]
Plugin 'bronson/vim-trailing-whitespace'
" 代码自动补全
Plugin 'Valloric/YouCompleteMe'
"代码片段快速插入
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" (){}""自动补全
Plugin 'Raimondi/delimitMate'
" html/xml标签配对补全
Plugin 'docunext/closetag.vim'
" 快速注释
Plugin 'scrooloose/nerdcommenter'
"  赋值语句代码对齐
Plugin 'godlygeek/tabular'
" 位置跳转
Plugin 'Lokaltog/vim-easymotion'
" 视图模式下的区块伸缩选取
Plugin 'terryma/vim-expand-region'
" 多光标选中编辑
Plugin 'terryma/vim-multiple-cursors'
" 文件搜索
Plugin 'kien/ctrlp.vim'
" 全局搜索插件
Plugin 'dyng/ctrlsf.vim'
" git状态显示
Plugin 'airblade/vim-gitgutter'
" 括号上色高亮
Plugin 'kien/rainbow_parentheses.vim'
" 目录树
Plugin 'scrooloose/nerdtree'
" 目录树tab曾强
Plugin 'jistr/vim-nerdtree-tabs'
" tab/buffer导航增强
Plugin 'szw/vim-ctrlspace'
" tag 
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/taglist.vim'
" Python 语法高亮
Plugin 'hdima/python-syntax'
" Python 语法检查
Plugin 'kevinw/pyflakes-vim'
" 函数名和自定义数据结构高亮
Plugin 'magic-dot-files/TagHighlight'






call vundle#end()

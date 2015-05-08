
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vumdle插件管理
Plugin 'gmarik/vundle.vim'

" Vim主题
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
" Plugin 'Lokaltog/vim-powerline'
"按键
Plugin 'ervandew/supertab'

" 代码
Plugin 'honza/vim-snippets'
Plugin 'Mizuchi/STL-Syntax'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/syntastic'
Plugin 'magic-dot-files/TagHighlight'
Plugin 'scrooloose/nerdtree'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/AUtoClose'
Plugin 'vim-scripts/cmdline-completion'
"Plugin 'Valloric/YouCompleteMe'
call vundle#end()

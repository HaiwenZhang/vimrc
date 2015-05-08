
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vumdle插件管理
Plugin 'gmarik/vundle.vim'

" Vim主题
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'

"按键
Plugin 'ervandew/supertab'
Plugin 'Lokaltog/vim-easymotion'

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
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'

"
Plugin  'godlygeek/csapprox'

" Python 代码 
Plugin 'davidhalter/jedi-vim' 
Plugin 'klen/python-mode'


call vundle#end()

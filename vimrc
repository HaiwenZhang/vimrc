
"
"
"Vimrc setting
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 通用配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置Vim历史纪录的行数
set history=700

" 关闭兼容模式
set nocompatible
set backspace=indent,eol,start

" 插件导入
if filereadable(expand("~/.vim/bundles.vim"))
    source ~/.vim/bundles.vim
endif

" 检测文件的类型
filetype on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on 
" 允许插件
filetype plugin on 
" 启动自动补全
filetype plugin indent on

" 文件修改以后自动载入
set autoread
" 自动保存
set autowrite
" 修改leader键
let mapleader = ","
let g:mapleader = ","

" 高亮搜索、实时搜索、忽略大小写
set hlsearch
set incsearch
set ignorecase
set smartcase

" 取消备份
" set nobackup
" 关闭交换文件
" set nosmapfile

" 按空格或,/取消搜索高亮
nmap <silent> <leader>/ :nohlsearch<CR>
noremap <silent> <Space> :silent noh<CR>
"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 颜色,字体,主题设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 语法高亮
syntax enable  
syntax on

" 主题风格
" set background=dark
" let g:solarized_termtrans=1
" let g:solarized_termcolors=256
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"
" colorscheme solarized
" colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1
" highlight NonText guibg=#060606
" highlight Folded  guibg=#0A0A0A guifg=#9090D0
colorscheme vividchalk

" 字体和大小
set guifont=Monaco:h14
set guifontwide=Source\ Sans\ Pro:h14


"==========================================
"" Display Settings 展示/排版等界面格式设置
"==========================================
""
" 显示当前的行号列号：
set ruler
" 在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode
" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7
" set winwidth=79
" 显示行号：
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 取消换行。
set nowrap
" 括号配对情况,跳转并高亮一下匹配的括号
set showmatch
" How many tenths of a second to blink when matching brackets
set matchtime=2

" 设置代码折叠
set foldenable
set foldmethod=indent
set foldlevel=99
" 可组合 {} () <> []使用
" zc 关闭当前打开的折叠
" zo 打开当前的折叠
" zm 关闭所有折叠
" zM 关闭所有折叠及其嵌套的折叠
" zr 打开所有折叠
" zR 打开所有折叠及其嵌套的折叠
" zd 删除当前折叠
" zE 删除所有折叠
" zj 移动至下一个折叠
" zk 移动至上一个折叠
" zn 禁用折叠
" zN 启用折叠

" 缩进配置
set smartindent " Smart indent
set autoindent " 打开自动缩进

" tab相关变更
set tabstop=4 " 设置Tab键的宽度 [等同的空格个数]
set shiftwidth=4 " 每一次缩进对应的空格数
set softtabstop=4 " 按退格键时可以一次删掉 4 个空格
set smarttab " insert tabs on the start of a line according to shiftwidth,
set expandtab " 将Tab自动转化成空格 [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set shiftround " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'

" A buffer becomes hidden when it is abandoned
set hidden
set wildmode=list:longest
set ttyfast

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"==========================================
"" FileEncode Settings 文件编码,格式
"==========================================
" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" set helplang=cn
" set langmenu=zh_CN.UTF-8
" 下面这句只影响普通模式 (非图形界面) 下的 Vim。
set termencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac
" 如遇Unicode值大于255的文本，不必等到空格再折行。
set formatoptions+=m
" 合并两行中文时，不在中间加空格：
set formatoptions+=B
"
"==========================================
"" Gvim设置
"==========================================
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

"==========================================
""         others 其它设置
"==========================================
autocmd! bufwritepost .vimrc source % " vimrc文件修改之后自动加载。 linux。

"" 自动补全配置
"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu
"" 增强模式中的命令行自动完成操作
set wildmenu


"==========================================
"    HotKey Settings 自定义快捷键设置
"==========================================
"" 主要按键重定义
" 关闭方向键, 强迫自己用 hjkl
"map <Left> <Nop>
"map <Right> <Nop>
"map <Up> <Nop>
"map <Down> <Nop>
"Treat long lines as break lines (useful when moving around in them)
"se swap之后，同物理行上线直接跳
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" 
" F2 列出TlistToggle
" F3 列出TarbarToggle
" F4 行号开关，用于鼠标复制代码用
" C，C++ 按F5编译运行
" F6 C,C++的调试
" F7 粘贴模式paste_mode开关,用于有格式的代码粘贴
" F8 打开BufExplorer

"F1 废弃这个键,防止调出系统帮助 
noremap <F1> <Esc>
" F2 列出TlistToggle
"map <silent> <F2> :TlistToggle<CR>

" F3 列出TarbarToggle
"nmap <silent> <F3> :TagbarToggle<CR>

" F4 行号开关，用于鼠标复制代码用
nnoremap <F4> :call HideNumber()<CR>
function! HideNumber()
    if(&relativenumber == &number)
        set relativenumber! number!
    elseif(&number)
        set number!
    else
        set relativenumber!
    endif
        set number?
    endfunc

"C，C++ 按F5编译运行
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
"        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc

"C,C++的调试
map <F6> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunc

" set paste
set pastetoggle=<F7> " when in insert mode, press <F5> to go to
" paste mode, where you can paste mass data
" that won't be autoindented
" disbale paste mode when leaving insert mode
au InsertLeave * set nopaste

" easier moving between tabs
" map <Leader>n <esc>:tabprevious<CR>
" map <Leader>m <esc>:tabnext<CR>
map <F8> :BufExplorer<CR>


" map sort function to a key
vnoremap <Leader>s :sort<CR>

"Smart way to move between windows 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" normal模式下切换到确切的tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>


"==========================================
"      FileType Settings 文件类型设置
"==========================================
"
"" Python 文件的一般设置，比如不要 tab 等
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

"==========================================
"      新建文件
"==========================================

"新建.c,.h,.sh,.java文件，自动插入文件头 
"autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call Settitle()" 
""定义函数SetTitle，自动插入文件头 
"func Settitle()
    "如果文件类型为.sh文件 
"    if &filetype == 'sh' 
"        call setline(1,"\#!/bin/bash") 
"        call append(line("."), "") 
"    endif

"    if &filetype == 'python'
"        call setline(1,"#!/usr/bin/env python")
"        call append(line("."), "__auther__ = 'haiwen'")
"        call append(line("."), "# Created Time: ".strftime("%c")) 
"        call append(line("."), "# -*- coding: utf-8 -*-")
"        call append(line(".")+1, "") 
"    endif

"    if &filetype == 'ruby'
"        call setline(1,"#!/usr/bin/env ruby")
"        call append(line("."),"# encoding: utf-8")
"        call append(line(".")+1, "")
"    endif
"
"    if expand("%:e") == 'cpp'
"        call append(line(".")+6, "#include<iostream>")
"        call append(line(".")+7, "using namespace std;")
"        call append(line(".")+8, "")
"    endif

"    if &filetype == 'c'
"        call append(line(".")+6, "#include<stdio.h>")
"        call append(line(".")+7, "")
"    endif

"    if expand("%:e") == 'h'
"        call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
"        call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
"        call append(line(".")+8, "#endif")
"    endif

"    if &filetype == 'java'
"        call append(line(".")+6,"public class ".expand("%:r"))
"        call append(line(".")+7,"")
"    endif
"endfunc 

"autocmd BufNewFile * normal G


"==========================================
""               插件设置
"==========================================
"############vim-airline##################
if isdirectory(expand("~/.vim/bundle/vim-airline/"))
    if !exists('g:airline_theme')
        "let g:airline_theme = 'solarized'
        let g:airline_theme = 'powerlineish'
    endif
    if !exists('g:airline_powerline_fonts')
        " Use the default set of separators with a few customizations
        let g:airline#extensions#tabline#enabled = 1
        let g:airline_left_sep = '▶'
        let g:airline_left_alt_sep = '❯'
        let g:airline_right_sep = '◀'
        let g:airline_right_alt_sep = '❮'
    endif
endif

"############NERDtree设置##################
map <C-e> <plug>NERDTreeTabsToggle<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

"当打开vim且没有文件时自动打开NERDTree
" autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"############jistr/vim-nerdtree-tab##################
map <Leader>n <plug>NERDTreeTabsToggle<CR>
" 关闭同步
let g:nerdtree_tabs_synchronize_view=0
let g:nerdtree_tabs_synchronize_focus=0
" 自动开启nerdtree
"let g:nerdtree_tabs_open_on_console_startup=1


"###############################################
"                 代码自动补全
"###############################################

"#############YouCompleteMe设置#################

"youcompleteme  默认tab  s-tab 和自动补全冲突
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
"let g:ycm_collect_identifiers_from_tags_files = 1

let g:ycm_seed_identifiers_with_syntax=1   "语言关键字补全, 不过python关键字都很短，所以，需要的自己打开

" 引入，可以补全系统，以及python的第三方包 针对新老版本YCM做了兼容
if !empty(glob("~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"))
    let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
endif

let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'gitcommit' : 1,
      \}


"#############ultisnips/snippets设置#################
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file"
"let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsSnippetDirectories  = ['UltiSnips']
let g:UltiSnipsEditSplit = "vertial"
"let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
map <leader>us :UltiSnipsEdit<CR>

" ctrl+j/k 进行选择
func! g:JInYCM()
    if pumvisible()
        return "\<C-n>"
    else
        return "\<c-j>"
    endif
endfunction

func! g:KInYCM()
    if pumvisible()
        return "\<C-p>"
    else
        return "\<c-k>"
    endif
endfunction
inoremap <c-j> <c-r>=g:JInYCM()<cr>
"au BufEnter,BufRead * exec "inoremap <silent> " . g:UltiSnipsJumpBackwordTrigger . " <C-R>=g:KInYCM()<cr>"
"let g:UltiSnipsJumpBackwordTrigger = "<c-k>"


"#############Raimondi/delimitMate设置#################
"" for python docstring ",优化输入
au FileType python let b:delimitMate_nesting_quotes = ['"']
" 关闭某些类型文件的自动补全
"au FileType mail let b:delimitMate_autoclose = 0


"#############docunext/closetag.vim设置#################
" 自动补全html/xml标签
let g:closetag_html_style=1

"#############scrooloose/syntasticvim设置#################
" 多语言语法检查
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_highlighting=1
let g:syntastic_python_checkers=['pyflakes', 'pep8'] " 使用pyflakes,速度比pylint快
let g:syntastic_python_pep8_args='--ignore=E501,E225'
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_html_checkers=['tidy', 'jshint']
" 修改高亮的背景色, 适应主题
highlight SyntasticErrorSign guifg=white guibg=black

" to see error location list
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5

function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction
nnoremap <Leader>s :call ToggleErrors()<cr>
" nnoremap <Leader>sn :lnext<cr>
" nnoremap <Leader>sp :lprevious<cr>

"#############hdima/python-syntax设置#################
let g:pyflakes_use_quickfix = 0

"########kien/rainbow_parentheses.vim设置#############
" 括号显示增强
" 不加入这行, 防止黑色括号出现, 很难识别
" \ ['black',       'SeaGreen3'],
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"########terryma/vim-multiple-cursor设置#############
" 多光标选中编辑
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"########terryma/vim-expand-region设置#############
" map + <Plug>(expand_region_expand)
" map _ <Plug>(expand_region_shrink)
vmap v <Plug>(expand_region_expand)
vmap V <Plug>(expand_region_shrink)

"########vim-surroun设置#############
let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"

"########CommandT 设置#############
" noremap <leader>o <Esc>:CommandT<CR>
" noremap <leader>O <Esc>:CommandTFlush<CR>
" noremap <leader>b <Esc>:CommandTBuffer<CR>

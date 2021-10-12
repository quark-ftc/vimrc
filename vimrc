call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'

Plug 'Yggdroot/indentLine'

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle



Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-json', 'coc-git','coc-clangd','coc-cmake','coc-sh','coc-sql','coc-highlight','coc-pairs','coc-snippets','coc-pyright','coc-vimlsp']
autocmd CursorHold * silent call CocActionAsync('highlight') " enable 'coc-highlight'


Plug 'vim-airline/vim-airline'

call plug#end()


filetype indent on "根据文件类型，使用不同的缩进和语法高亮
set showcmd "在命令模式，在下面显示输入的命令，比如，输入的指令是 '2dd',当输入 ‘2d’时，会在屏幕底部显示，当输入最后一个 ‘d’时，完成输入
set relativenumber " 显示相对行号
set showmatch "光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set incsearch "输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果。
set ignorecase "输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果。
set smartcase "如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test。

set autoread "打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示。
set autochdir "自动切换工作目录。这主要用在一个 Vim 会话之中打开多个文件的情况，默认的工作目录是打开的第一个文件的目录。该配置可以将工作目录自动切换到，正在编辑的文件的目录。
let autosave=1




set shiftwidth=4 "每层缩进为4个空格
set softtabstop=4 "自动将tab转化为4个空格
set expandtab
set tabstop=4 "按下 Tab 键时，**显示**4个空格,注意，这个设置仅仅改变tab(\t)的显示宽度。
"""""""""""""""""""""""""""""""""""""""""""""""""""tabstop""""""""""''"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim帮助文档中，不建议修改这个值为8以外的数字(默认为8)。
"应为例如，设置 tabstop 选项值为 4，在 vim 中使用 tab 字符进行列对齐，
"看起来排版正常，保存文件。但是在其他显示 tab 字符为8个空格的软件上查看这个文件，
"原本对齐的列可能就会错乱，没对齐。
"只有设置了 expandtab 选项，把 tab 字符替换为空格的情况下，才建议修改 tabstop选项为其他值，
"此时，在 vim 的插入模式下，按下 Tab 键，插入的是空格，而不是 tab 字符，保存文件后，用其他软件打开这个文件，看不到 tab 字符，
"自然不会因为 tab 字符的显示宽度不同而导致排版异常。
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cindent shiftwidth=4  "设置C风格的缩进，并且将缩进设置为4格



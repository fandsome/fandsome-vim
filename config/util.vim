"###################  ###################

" 正则表达
set magic
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 只能backspace
set backspace=start,indent,eol
" 取消报错声
set noerrorbells
set novisualbell

"################### 代码折叠 ###################

set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
" set foldmethod=marker
set foldmethod=marker
set foldlevel=99


"################### 行处理 ###################

set tabstop=4
set shiftwidth=4
set tabstop=4
set smarttab
set ai
set si
set cindent
set wrap

" 快速调回上次编辑的行
map mm '.zz

" 合并两行中文时，不在中间加空格：
set formatoptions+=B


"################### 文件处理 ###################

" w!! to sudo & write a file
cmap w!! w !sudo tee >/dev/null %

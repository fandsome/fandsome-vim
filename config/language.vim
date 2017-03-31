"################### 语言相关 ###################

"###### COMMON #########

" 保存时去除最后空格
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" 定义函数AutoSetFileHead，自动插入文件头
autocmd BufNewFile *.sh,*.py exec ":call AutoSetFileHead()"
function! AutoSetFileHead()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif

    "如果文件类型为python
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(1, "\# encoding: utf-8")
    endif

    normal G
    normal o
    normal o
endfunc

"###### PHP #########

autocmd FileType php set tabstop=4 shiftwidth=4 expandtab ai


"###### Python #########
"
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai


"###### Golang #########


"###### Javascript #########

autocmd FileType js,jsx,javascript.jsx set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai

"###### CSS/LESS #########

autocmd FileType css,less set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai

"###### HTML #########

autocmd FileType html,htm,blade set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai

"###### JSON #########

autocmd FileType json set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai

"###### typescript #########

autocmd FileType typescript set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai

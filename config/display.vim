"################### 显示增强 ###################

if has("gui_running")
    source ~/.vim/config/display.gui.vim
    if has("gui_macvim")
        source ~/.vim/config/display.mac.vim
    end
else
    source ~/.vim/config/display.cmd.vim
endif

" 设置标记一列的背景颜色和数字一行颜色一致
" hi! link SignColumn   LineNr
" hi! link ShowMarksHLl DiffAdd
" hi! link ShowMarksHLu DiffChange
 
" 防止错误整行标红导致看不清
" highlight clear SpellBad
" highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
" highlight clear SpellCap
" highlight SpellCap term=underline cterm=underline
" highlight clear SpellRare
" highlight SpellRare term=underline cterm=underline
" highlight clear SpellLocal
" highlight SpellLocal term=underline cterm=underline

"################### 显示增强 ###################

" 突出显示行
set cursorline
" 突出显示列
" set cursorcolumn

" 显示行号
set ruler
" 在状态栏显示正在输入的命令
set showcmd
" 显示行号
set number
" 括号匹配
set showmatch


"################### 搜索显示增强 ###################

set hlsearch
set incsearch
" 忽略大小写
set ignorecase
"有一个或以上大写字母时大小写敏感
set smartcase 

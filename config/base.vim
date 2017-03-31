"################### 文件 ######################

" 文件编码
set encoding=utf-8
" 标准文件类型
set ffs=unix,mac,dos
" 中文
language messages zh_CN.utf-8
set helplang=cn

" 文件类型设置
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" 文件备份
set nobackup
set noswapfile
set history=2000
if has('persistent_undo')
  set undolevels=1000         " How many undos
  set undoreload=10000        " number of lines to save for undo
  set undofile                " So is persistent undo ...
  silent execute '!mkdir -p /tmp/vimundo'
  set undodir=/tmp/vimundo/
endif

" 自动加载
set autoread
" 共享黏贴板
set clipboard=unnamed
" 在很长的行里，单行移动
map j gj
map k gk

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

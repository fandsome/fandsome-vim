"################### 基础设置 ######################

let mapleader = ','
let g:mapleader = ','

syntax on

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

source ~/.vim/config/base.vim
source ~/.vim/config/display.vim
source ~/.vim/config/language.vim
source ~/.vim/config/util.vim

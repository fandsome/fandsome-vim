"################### 语言相关 ###################

"###### Python #########

" python fly check, 弥补syntastic只能打开和保存才检查语法的不足
Bundle 'kevinw/pyflakes-vim'
let g:pyflakes_use_quickfix = 0

" for python.vim syntax highlight
Bundle 'hdima/python-syntax'
let python_highlight_all = 1

"###### Golang #########
" 1.install golang and install gocode 'go get github.com/nsf/gocode'
" 2.make sure gocode in your path: `which gocode` (add $GOPATH/bin to you $PATH)
" Bundle 'Blackrush/vim-gocode'
Bundle 'fatih/vim-go.git'

"###### Markdown #########
Bundle 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1

"###### HTML/JS/JQUERY/CSS #########

" for javascript  注意: syntax这个插件要放前面
Bundle 'jelera/vim-javascript-syntax'
Bundle "pangloss/vim-javascript"
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

Bundle "moll/vim-node"

" Bundle "wookiehangover/jshint.vim"
" let JSHintUpdateWriteOnly=1
"
" Bundle "maksimr/vim-jsbeautify"

"for jquery
Bundle 'nono/jquery.vim'
"for react
Bundle 'mxw/vim-jsx'
let g:jsx_ext_required = 0

"###### emmet HTML complete #########
Bundle "mattn/emmet-vim"
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"let g:user_emmet_leader_key='<C-y>,'

"###### vim.less : less 自动更新##########
Bundle 'groenewege/vim-less'
" autocmd BufWritePost *.less :!lessc % > %:p:r.css


"###### vim.blade hight light ##########
Bundle 'jwalton512/vim-blade'
set sw=2 sts=2 ts=2

"###### typescript #########
Bundle 'leafgarland/typescript-vim'
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"###### angular2 #########
Bundle 'burnettk/vim-angular'
Bundle 'magarcia/vim-angular2-snippets'

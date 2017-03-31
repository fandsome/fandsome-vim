"################### 快速导航 ###################
"目录导航
Bundle 'scrooloose/nerdtree'
" map <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeChDirMode=2
" let NERDTreeIgnore=[ '^\.git$', '^\.svn$', '^\.hg$' ]
" s/v 分屏打开文件
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'
" 自动打开
" autocmd vimenter * NERDTree
" 如果没有编辑的文件，自动关闭
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-e> <ESC>:NERDTreeToggle<CR>


"################### 文件搜索 ###################
Bundle 'ctrlpvim/ctrlp.vim'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:100'
let g:ctrlp_regexp = 1

" ctrlp插件1 - 不用ctag进行函数快速跳转
Bundle 'tacahiroy/ctrlp-funky'
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_extensions = ['funky']
let g:ctrlp_map = '<C-c>'
" nnoremap <C-c> :CtrlPFunky<Cr>

Plugin 'rking/ag.vim'
let g:aghighlight=1
nnoremap <Leader>ag :Ag


"################### GIT ###################
Bundle 'tpope/vim-fugitive'


"################### 自动补全 ###################
Plugin 'ervandew/supertab'

Plugin 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" inoremap <expr> <c-k> pumvisible()?"\<c-p>":"\<c-k>"
" inoremap <expr> <c-j> pumvisible()?"\<c-n>":"\<c-j>"


"################### 快速编码 ###################

" 快速赋值语句对齐
Plugin 'godlygeek/tabular'
nmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a? :Tabularize /\zs?<CR>
"nmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a: :Tabularize /\zs:<CR>
nmap <Leader>a=> :Tabularize /\zs=><CR>
nmap <Leader>at :Tabularize /\zs\|<CR>

" Plugin 'honza/vim-snippets'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" For snippet_complete marker.
if has('conceal')
	set conceallevel=2 concealcursor=i
endif


"################### 快速移动 ###################


"################### 文本对象 ###################


"################### 快速选中 ###################
 
"################### 注释 ###################
Plugin 'scrooloose/nerdcommenter'


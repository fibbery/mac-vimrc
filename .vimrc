syntax enable
" configure vundle
filetype off
call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'morhetz/gruvbox'
Plug 'aonemd/kuroi.vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'majutsushi/tagbar'
Plug 'tmhedberg/SimpylFold'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'tell-k/vim-autopep8'
Plug 'scrooloose/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
Plug 'easymotion/vim-easymotion'
Plug 'mikelue/vim-maven-plugin'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'
Plug 'fatih/vim-go'
Plug 'flazz/vim-colorschemes'
Plug 'liuchengxu/space-vim-dark'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-surround'

call plug#end()
filetype plugin indent on

"----------colorscheme-------
colorscheme space-vim-dark
hi Comment    cterm   = italic
hi Normal     ctermbg = NONE guibg=NONE
hi LineNr     ctermbg = NONE guibg=NONE
hi SignColumn ctermbg = NONE guibg=NONE
hi Comment guifg=#5C6370 ctermfg=59
let g:space_vim_dark_background = 234
set termguicolors
syntax on

" ----------basic configure--------
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab smarttab
set autoindent
set relativenumber
set number
set linespace=2
set autoread
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " dont store swapfiles in the current directory
set encoding=utf-8
"set hlsearch
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
"set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:◆
set ruler
set scrolloff=3
set showcmd
set smartcase
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc " tab ignore file under this dirctory
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
set cursorline
set backspace=2
set noswapfile
set nobackup



"----------key mappings-------
let mapleader =' '
noremap <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :qa!<CR>
nnoremap <Leader>w :w<CR>
nnoremap U <C-r>

" scroll screen
nnoremap <Leader>d <C-d>
nnoremap <Leader>u <C-u>
nnoremap <Leader>f <C-f>
nnoremap <Leader>b <C-b>

" airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_theme='bubblegum'
let g:Powerline_symbols='fancy'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#fnamecollapse = 1
let g:airline#extensions#tabline#fnametruncate = 0
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#default#section_truncate_width = {
	    \ 'b': 79,
	    \ 'x': 60,
	    \ 'y': 88,
	    \ 'z': 45,
	    \ 'warning': 80,
	    \ 'error': 80,
	    \ }
let g:airline#extensions#default#layout = [
	    \ [ 'a', 'error', 'warning', 'b', 'c' ],
	    \ [ 'x', 'y', 'z' ]
	    \ ]
" Distinct background color is enough to discriminate the warning and
" error information.
let g:airline#extensions#ale#error_symbol = '•'
let g:airline#extensions#ale#warning_symbol = '•'
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>


" ctrlp
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
	    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
	    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
	    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
map <Leader>mu :CtrlPMRU<CR>

" ctrlp-funky
nnoremap <Leader>fu :CtrlPFunky<CR>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<CR>
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_extensions             = ['funky']


" nerdtree
noremap <F4> :NERDTreeToggle<CR>

" vim -easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" tagbar
nmap <F8> :TagbarToggle<CR>


" window move
nnoremap <Leader>ww <C-W>w
nnoremap <Leader>wr <C-W>r
nnoremap <Leader>wc <C-W>c
nnoremap <Leader>wq <C-W>q
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wl <C-W>l

" bash like
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>

" code folding
set foldmethod=indent
set foldlevel=99

" SimpylFold
let g:SimpylFold_docstring_perview=1

" gitgutter
let g:gitgutter_diff_args = '-w'

" YouCompeteMe
let g:ycm_global_ycm_extra_conf                          = '~/ycm_extra_conf.py' " 默认配置文件路径
let g:ycm_confirm_extra_conf                             = 0                     " 打开vim时不再询问是否加载ycm_extra_conf.py配置
set completeopt                                          =longest,menu
let g:ycm_path_python_interpreter                        = '/usr/local/bin/python3.7'
let g:ycm_seed_identifiers_with_syntax                   = 1                     " 是否开\是否开启语义不全
let g:ycm_complete_in_comments                           = 1                     " 是否在注释中也开启补全
let g:ycm_collect_identifiers_from_comments_and_strings  = 0
let g:ycm_min_num_of_chars_for_completion                = 2                     " 开始补全的字符
let g:ycm_autoclose_preview_window_after_completion      = 1
let g:ycm_cache_omnifuc                                  = 0
let g:ycm_complete_in_strings                            = 1
autocmd InsertLeave * if pumvisible ()                 == 0 | pclose | endif
"回车即选中当前项
"inoremap <expr> <CR>       pumvisible() ? '<C-y>' : '\<CR>'
"上下左右键行为
inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'
inoremap <expr> <PageDown> pumvisible() ? '\<PageDown>\<C-p>\<C-n>' : '\<PageDown>'
inoremap <expr> <PageUp>   pumvisible() ? '\<PageUp>\<C-p>\<C-n>' : '\<PageUp>'

" indentLine
let g:indentLine_char='┆'
let g:indentLine_enabled = 1


" autopep8
let g:autopep8_disable_show_diff =1

"nerdcomment
map <leader>ci <CR>

" go
let g:go_fmt_command = "goimports"
let g:go_auto_type_info=1
au FileType go nmap <Leader>go <Plug>(go-implements)
au FileType go nmap <Leader>gi <Plug>(go-info)
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>gdv <Plug>(go-def-vertical)
au FileType go nmap <Leader>gdt <Plug>(go-def-tab)
au FileType go nmap <Leader>ge <Plug>(go-rename)
au FileType go nmap <Leader>r :!go run %<CR>
au FileType go nmap <Leader>b :!go build %<CR>
au FileType go nmap <Leader>t :!go test %<CR>



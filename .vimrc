syntax enable
" configure vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/vim-easy-align'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'majutsushi/tagbar'
Plugin 'tmhedberg/SimpylFold'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
call vundle#end()
filetype plugin indent on

"----------colorscheme-------
colorscheme gruvbox
set bg=dark
set guioptions=
syntax on

" ----------basic configure--------
set relativenumber
set number
set linespace=2
set autoindent
set autoread
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " dont store swapfiles in the current directory
set encoding=utf-8
"set hlsearch
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:◆
set ruler
set scrolloff=3
set shiftwidth=2
set showcmd
set smartcase
set softtabstop=4
set tabstop=8
set shiftwidth=4
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
nnoremap <Leader>e <C-e>
nnoremap <Leader>y <C-y>

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


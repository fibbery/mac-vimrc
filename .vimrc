syntax enable
" configure vundle
filetype off
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
Plug 'easymotion/vim-easymotion'
Plug 'liuchengxu/space-vim-dark'
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

" nerdtree
noremap <F4> :NERDTreeToggle<CR>

" vim-easy-align
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

" gitgutter
let g:gitgutter_diff_args = '-w'

" indentLine
let g:indentLine_char='┆'
let g:indentLine_enabled = 1


" autopep8
let g:autopep8_disable_show_diff =1

"nerdcomment
map <leader>ci <CR>

" json
autocmd Filetype json :IndentLinesDisable



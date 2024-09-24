set nocompatible " Use VIM settings rather than Vi settings *required*
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

let mapleader = ';' " Key remapping

Plugin 'VundleVim/Vundle.vim' " Vundle
Plugin 'preservim/nerdtree' " nerdtree
Plugin 'vim-airline/vim-airline' " vim-airline
Plugin 'vim-airline/vim-airline-themes'

" NERDTREE preferences
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "left"
let g:NERDTreeWinSize=20

" vim-airline preferences
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
map <C-B> :NERDTreeToggle<CR>

set t_Co=256
set encoding=utf-8

set showmode

" Set color scheme
set background=dark
colorscheme PaperColor

syntax on

" Default to indenting 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set mouse=a " Mouse

set showmatch " Highlight matching braces

set ruler " Show bottom ruler

set equalalways " Split windows to equal sizes

set formatoptions=croq " Enable comment line auto formatting

set history=10000 " Increase history

set title " Set window title to file name

set number " Show line numbers

set spell " Enable spellchecking

set pastetoggle=<F2> " Bind <F2> for better copy-pasting

set noerrorbells " Disable beep on errors
set visualbell " Flash screen on errors

set cursorline " Highlight underneath cursor

set hlsearch " Highlight search pattern
set ignorecase " Case-insensitive
set smartcase " Smart-case
set incsearch " Increment search

set scrolloff=5 " Never scroll off

set wildmode=longest,list " Better UNIX-like autocomplete

set clipboard=unnamed " Copy-paste from system keyboard

set lazyredraw " Don't redraw when running macros

set noswapfile " Disable swap files

set wrap " Visually wrap lines

set linebreak " Wrap on 'good' characters

set backspace=indent,eol,start " Better backspacing

set ttyfast " Speed up Vim

set nostartofline " Scrolling maintains horizontal position

autocmd BufWritePre * :%s/\s\+$//e " Strip white-spaces when writing to file

" Buffer preferences
nnoremap <Leader>1 :buffer 1<CR>
nnoremap <Leader>2 :buffer 2<CR>
nnoremap <Leader>3 :buffer 3<CR>
nnoremap <Leader>4 :buffer 4<CR>
nnoremap <Leader>5 :buffer 5<CR>
nnoremap <Leader>6 :buffer 6<CR>
nnoremap <Leader>7 :buffer 7<CR>
nnoremap <Leader>8 :buffer 8<CR>
nnoremap <Leader>9 :buffer 9<CR>
nnoremap <Leader>w :bfirst<CR>
nnoremap <Leader>s :blast<CR>
nnoremap <Leader>a :bprev<CR>
nnoremap <Leader>d :bnext<CR>

call vundle#end()

filetype plugin indent on

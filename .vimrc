set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'scrooloose/nerdcommenter'
Plugin 'xuhdev/SingleCompile'
Plugin 'SirVer/ultisnips'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'Lokaltog/vim-powerline'
Plugin 'sjl/gundo.vim'
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"let mapleader=","
noremap <F5> :GundoToggle<CR>
noremap <F6> :UltiSnipsEdit<CR>
noremap <F7> :vsp ~/.vimrc<CR>
noremap <F8> :source $MYVIMRC<CR>
noremap <leader>g :!gedit %<CR>
noremap <leader>i :!gedit in<CR>
noremap <leader>s :call UltiSnips_ListSnippets()<CR>

"added map for adding tempalate
nnoremap nkl :0r ~/template.cpp<CR>

"map for ESC to kj
inoremap kj <Esc>

"maps for SingleCompile
nmap <F9> :SCCompileRun<cr>

set t_Co=256
syntax enable

"set background=dark
"color solarized
"color Monokai
"color badwolf
color molokai
"color xoria256
"color zenburn
"color stingray
"color herald
"color 256-grayvim
nmap \q :nohlsearch<CR>
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>

set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4 " tab width is 4 spaces
set shiftwidth=4 " indent also with 4 spaces
set expandtab " expand tabs to spaces
"set foldmethod=marker
"set fdm=indent
set number
set backspace=indent,eol,start
set noswapfile

" Remember cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Remember folds
au BufWinLeave * mkview
au BufWinEnter * silent loadview

"Paste Clipboard
"nmap \y "+p
"nmap \\ "+y
nmap <leader>y "*y
nmap <leader>Y "*yy
nmap <leader>p "*p

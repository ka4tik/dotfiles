
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
Bundle 'scrooloose/nerdcommenter'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/xoria256.vim'
Bundle 'xuhdev/SingleCompile'
Bundle 'SirVer/ultisnips'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'flazz/vim-colorschemes'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Raimondi/delimitMate'
Bundle 'uguu-org/vim-matrix-screensaver'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'vim-scripts/Wombat'
"Bundle 'baskerville/bubblegum'

 filetype plugin indent on 
 
"added map for adding tempalate 
nnoremap nkl :0r ~/template.cpp<CR>

"map for ESC to kj 
inoremap kj <Esc>

"maps for SingleCompile
nmap <F9> :SCCompileRun<cr>

"imap  cc <C-Tab> 

set t_Co=256
syntax enable

"let g:solarized_termcolors=256
"set background=light
"colorscheme solarized
color Monokai 
"color xoria256
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


set foldmethod=marker
set number
set backspace=indent,eol,start

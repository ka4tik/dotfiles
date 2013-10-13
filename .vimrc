
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
"Bundle 'Lokaltog/vim-powerline'
Bundle 'uguu-org/vim-matrix-screensaver'
Bundle 'tpope/vim-endwise'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/matchit.zip'
Bundle 'tomasr/molokai'
Bundle 'vim-scripts/mru.vim'
Bundle 'chriskempson/tomorrow-theme'
Bundle 'kshenoy/vim-signature'
Bundle 'mhinz/vim-startify'
Bundle 'matze/vim-move'
Bundle 'bling/vim-airline'
"Bundle 'Rip-Rip/clang_complete'
"Bundle 'vim-scripts/Conque-Shell'
"Bundle 'HackerEarth/hackerearth.vim'
"bundle 'mattn/webapi-vim'
"bundle 'mattn/gist-vim'

"Bundle 'Raimondi/delimitMate'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'vim-scripts/Wombat'
"Bundle 'baskerville/bubblegum'

filetype plugin indent on 

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

"imap  cc <C-Tab> 

set t_Co=256
syntax enable

"let g:solarized_termcolors=256
"set background=light
"colorscheme solarized
color Monokai 
"color molokai 
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
set foldmethod=manual
set number
set backspace=indent,eol,start

" Remember cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Remember folds 
au BufWinLeave * mkview
au BufWinEnter * silent loadview

let g:HackerEarthApiClientKey = "d11dcf4e7dc530bbd785e0400313b65583b31de7"


set nocompatible             
filetype off        

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
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
Plugin 'tpope/vim-fugitive'

call vundle#end()           
filetype plugin indent on   

noremap <F5> :GundoToggle<CR>
noremap <F6> :UltiSnipsEdit<CR>
noremap <F7> :vsp ~/.vimrc<CR>
noremap <F8> :source $MYVIMRC<CR>
noremap <leader>g :!gedit %<CR>
noremap <leader>i :!gedit in<CR>
noremap <leader>s :call UltiSnips_ListSnippets()<CR>
nnoremap nkl :0r ~/template.cpp<CR>
inoremap kj <Esc>
nmap <F9> :SCCompileRun<cr>
nmap \q :nohlsearch<CR>

set t_Co=256

"color solarized
"color Monokai
"color badwolf
color molokai
"color xoria256
"color zenburn
"color stingray
"color herald
"color 256-grayvim

syntax enable
set background=dark
set incsearch
set ignorecase
set smartcase
set hlsearch
set cursorline
set nocompatible " use indentation of previous line
set autoindent " use intelligent indentation for C
set smartindent " configure tabwidth and insert spaces instead of tabs
set tabstop=4 " tab width is 4 spaces
set shiftwidth=4 " indent also with 4 spaces
set expandtab " expand tabs to spaces
set number
set backspace=indent,eol,start
set noswapfile
set nobackup
set nowritebackup
set undofile

" Remember folds
au BufWinLeave * mkview
au BufWinEnter * silent loadview
augroup CplusplusCmds
    " compile c++ without SingleCompile Plugin
    "autocmd FileType cpp nnoremap <F9> :!g++ % && ./a.out <cr>
augroup END

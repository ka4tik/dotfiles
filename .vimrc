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
inoremap kj <Esc>
nnoremap <Space> za
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
set clipboard=unnamedplus "tells vim to use system clipboard as defualt registe
set autoread " reload files (no local changes)
if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=~/.vim/undo//
  set undofile
endif

" Remember folds
au BufWinLeave * mkview
au BufWinEnter * silent loadview
augroup CplusplusCmds
    " compile c++ without SingleCompile Plugin
    "autocmd FileType cpp nnoremap <buffer> <F9> :!g++ % && ./a.out <cr>

    "replace int with long long in a cpp file
    function! ReplaceIntWithLL()
        %s/int /long long /g
        %s/long long main/int main/g
        %s/<int>/<long long>/g
    endfunction

    "makes a file in and copies current clipboard content into it"
    function! MakeInputFile()
        vsp in 
        normal gg"_dG
        normal P
        w
        quit
    endfunction

    nnoremap nkl :0r ~/template.cpp<CR>
    noremap <leader>i :call MakeInputFile()<CR>
    command! Makell :call ReplaceIntWithLL()
augroup END

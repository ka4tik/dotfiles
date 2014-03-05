
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'junegunn/vim-easy-align'
Bundle 'scrooloose/nerdcommenter'
Bundle 'xuhdev/SingleCompile'
Bundle 'SirVer/ultisnips'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'flazz/vim-colorschemes'
Bundle 'Lokaltog/vim-powerline'
Bundle 'sjl/gundo.vim'
Bundle 'tomasr/molokai'
"Bundle 'skammer/vim-css-color'
"Bundle 'vim-scripts/xoria256.vim'
"Bundle 'mhinz/vim-startify'
"Bundle 'arecarn/crunch'
"Bundle 'uguu-org/vim-matrix-screensaver'
"Bundle 'tpope/vim-endwise'
"Bundle 'tpope/vim-surround'
"Bundle 'vim-scripts/matchit.zip'
"Bundle 'vim-scripts/mru.vim'
"Bundle 'chriskempson/tomorrow-theme'
"Bundle 'kshenoy/vim-signature'
"bundle 'matze/vim-move'
"bundle 'bling/vim-airline'
"bundle 'arecarn/frisk'
"bundle 'rip-rip/clang_complete'
"bundle 'vim-scripts/conque-shell'
"bundle 'hackerearth/hackerearth.vim'
"bundle 'mattn/webapi-vim'
"bundle 'mattn/gist-vim'
"bundle 'raimondi/delimitmate'
"bundle 'valloric/youcompleteme'
"bundle 'vim-scripts/wombat'
"bundle 'baskerville/bubblegum'
"bundle 'vim-scripts/autosavesetting'
"Bundle 'altercation/vim-colors-solarized'
Bundle 'itchyny/calendar.vim'

filetype plugin indent on 

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


function! g:UltiSnips_Complete()
    call UltiSnips_ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips_JumpForwards()
            if g:ulti_jump_forwards_res == 0
                return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"

let g:calendar_google_calendar = 1
let g:calendar_google_task = 1


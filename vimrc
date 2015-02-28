set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'ctrlp.vim'
Plugin 'surround.vim'
Plugin 'The-NERD-tree'
Plugin 'jade.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bronson/vim-trailing-whitespace'

call vundle#end()            " required
filetype plugin indent on    " required

set ruler
set gcr=n:blinkon0
set expandtab
set shiftwidth=2
set softtabstop=2
syntax on
set number
set numberwidth=3
colorscheme molokai
"set background=dark
"let g:solarized_termcolors=16
let g:NERDTreeChDirMode       = 2
let g:ctrlp_working_path_mode = 'rw'
set guifont=Menlo\ Regular:h12
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set timeoutlen=1000 ttimeoutlen=10
" FIX: PluginUpdate => git pull: git-sh-setup: No such file or directory in MacVim (OK in non-GUI version of Vim)
if has("gui_macvim")
    set shell=/bin/bash\ -l
endif

" Close the damn preview window already.
let g:ycm_autoclose_preview_window_after_completion=1

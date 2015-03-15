set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Vundle.vim'
Plugin 'ctrlp.vim'
Plugin 'surround.vim'
Plugin 'The-NERD-tree'
Plugin 'jade.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'xolox/vim-misc'
Plugin 'Vitality' " Tmux bar cursor in insert mode
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tommcdo/vim-exchange'
Plugin 'ivanov/vim-ipython'
Plugin 'Valloric/YouCompleteMe'
Plugin 'raichoo/haskell-vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'hdima/python-syntax'


"Plugin 'bling/vim-airline'
"Plugin 'powerline/powerline'
"Plugin 'Yggdroot/indentLine'
"Plugin 'xolox/vim-session'
"Plugin 'delimitMate.vim'

call vundle#end()            " required
filetype plugin indent on    " required


" Rebind <Leader> key
" " I like to have it here becuase it is easier to reach than the default and
" " it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" easier moving between tabs
map <Leader>n <esc>:bp<CR>
map <Leader>m <esc>:bn<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

map <Leader>l i['<ESC>ea']<ESC>

" easier moving of code blocks
" " Try to go into visual mode (v), thenselect several lines of code here and
" " then press ``>`` several times.
"vnoremap < <gv  " better indentation
"vnoremap > >gv  " better indentation

" Airline stuff
"let g:airline#extensions#tabline#enabled = 1
"set laststatus=2

set backspace=indent,eol,start
set ruler
"set gcr=n:blinkon0
set expandtab
set shiftwidth=2
set softtabstop=2
syntax on
set number
set numberwidth=3
set hidden
set cursorline
colorscheme molokai
"set background=dark
"let g:solarized_termcolors=16
let g:ctrlp_working_path_mode = 'rw'
set guifont=Menlo\ Regular:h12
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=*.pyc

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set timeoutlen=1000 ttimeoutlen=10

" FIX: PluginUpdate => git pull: git-sh-setup: No such file or directory in
" MacVim (OK in non-GUI version of Vim)
if has("gui_macvim")
  set shell=/bin/bash\ -l
endif

" Correct colors in terminal
if !has("gui_running")
  set term=screen-256color
endif

" Close the damn preview window already.
let g:ycm_autoclose_preview_window_after_completion=1
set omnifunc=csscomplete#CompleteCSS
inoremap {<CR> {<CR>}<Esc>ko

"let g:session_autosave = 'yes'
"let g:session_autoload = 'yes'

noremap Y y$

set tw=80
set mouse=a

let g:python_highlight_all = 1
let g:python_version_2 = 1

"set laststatus=2 " Always display the statusline in all windows
"set showtabline=2 " Always display the tabline, even if there is only one tab
"set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
"let g:airline_powerline_fonts = 1
"let g:airline_theme = 'molokai'


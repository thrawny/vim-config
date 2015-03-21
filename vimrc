set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Vundle.vim'

Plugin 'ctrlp.vim'
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|dist'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=*.pyc

Plugin 'surround.vim'

Plugin 'The-NERD-tree'

Plugin 'jade.vim'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'bronson/vim-trailing-whitespace'

Plugin 'xolox/vim-misc'

Plugin 'Vitality' " Tmux bar cursor in insert mode

Plugin 'christoomey/vim-tmux-navigator'

" Change two selections. use cx or cxx
Plugin 'tommcdo/vim-exchange'

Plugin 'ivanov/vim-ipython'

Plugin 'Valloric/YouCompleteMe'
" Close the damn preview window already.
let g:ycm_autoclose_preview_window_after_completion=1

Plugin 'raichoo/haskell-vim'

Plugin 'jelera/vim-javascript-syntax'

" Select blocks in python
Plugin 'michaeljsmith/vim-indent-object'

" Git wrapper
Plugin 'tpope/vim-fugitive'

Plugin 'bling/vim-airline'
set laststatus=2 " Always display the statusline in all windows
"set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'

Plugin 'mattn/emmet-vim'
let g:user_emmet_leader_key='<C-w>'

Plugin 'pangloss/vim-javascript'

Plugin 'othree/html5.vim'

Plugin 'klen/python-mode'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_folding = 0
let g:pymode_rope = 0

Plugin 'hail2u/vim-css3-syntax'

"Plugin 'powerline/powerline'
"Plugin 'Yggdroot/indentLine'
"Plugin 'xolox/vim-session'
"Plugin 'delimitMate.vim'

call vundle#end()            " required
filetype plugin indent on    " required

"Basic stuff
set backspace=indent,eol,start
set ruler
set expandtab
set shiftwidth=2
set softtabstop=2
syntax on
set number
set numberwidth=3
set hidden
set cursorline
set tw=80
set mouse=a
set timeoutlen=1000 ttimeoutlen=10
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set backup
set noswapfile
set omnifunc=csscomplete#CompleteCSS
set autoread

"Searching
" search as characters are entered
set incsearch
" highlight matches
set hlsearch
" dont wanna highlight searches whenever i source vimrc
nohlsearch
" ignore case sensitivity
set ignorecase
" we want smartcase though
set smartcase

" Not using this anymore
"let g:session_autosave = 'yes'
"let g:session_autoload = 'yes'
"set gcr=n:blinkon0

" Looks
set guifont=Menlo\ Regular\ for\ Powerline:h12
colorscheme molokai
" Correct colors in terminal
if !has("gui_running")
  set term=screen-256color
endif

" FIX: PluginUpdate => git pull: git-sh-setup: No such file or directory in
" MacVim (OK in non-GUI version of Vim)
if has("gui_macvim")
  set shell=/bin/bash\ -l
endif

" My own mappings
" Rebind <Leader> key
let mapleader = ","
inoremap {<CR> {<CR>}<Esc>ko
inoremap ({<CR> ({<CR>});<Esc>ko
" easier moving between buffers
map <Leader>n <esc>:bp<CR>
map <Leader>m <esc>:bn<CR>
" map sort function to a key
vnoremap <Leader>s :sort<CR>
" Wrap word in ['']
map <Leader>l i['<ESC>ea']<ESC>
map <silent> <Leader>o :noh<ESC>
noremap Y y$
noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz
noremap <Leader>v :e ~/.vimrc<CR>
noremap <leader>sv :source $MYVIMRC<CR>

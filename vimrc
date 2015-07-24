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
" X in Visual mode !!!
Plugin 'tommcdo/vim-exchange'

Plugin 'ivanov/vim-ipython'

" Plugin 'Valloric/YouCompleteMe'
" Close the damn preview window already.
" let g:ycm_autoclose_preview_window_after_completion=1

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
let g:pymode_options_colorcolumn = 0

Plugin 'hail2u/vim-css3-syntax'
Plugin 'Raimondi/delimitMate'

Plugin 'tpope/vim-commentary'

Plugin 'othree/xml.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-repeat'

Plugin 'davidhalter/jedi-vim'
let g:jedi#show_call_signatures = "2"
let g:jedi#popup_select_first = 1
autocmd FileType python setlocal completeopt-=preview

Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-n>"

" Silver search
Plugin 'rking/ag.vim'
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

Plugin 'wincent/Command-T'
let g:CommandTCancelMap=['<ESC>','<C-c>']
let g:CommandTMaxHeight=10
let g:CommandTWildIgnore=&wildignore . ",**/venv/*"

Plugin 'robbles/logstash.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Python stuff
if has('python3')
  let g:jedi#force_py_version = 3
  let g:pymode_python = 'python3'
endif

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
let g:molokai_original = 1
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
map <Leader>lc :lclose<CR>
map <silent> <Leader>o :noh<ESC>
noremap Y y$
noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz
noremap n nzzzv
noremap N Nzzzv
noremap <Leader>, <C-^>zz
noremap <Leader>v :e $MYVIMRC<CR>
noremap <Leader>z :e ~/.zshrc<CR>
noremap <Leader>tm :e ~/.tmux.conf<CR>
noremap <Leader>sv :source $MYVIMRC<CR>
noremap <localleader>b :NERDTreeToggle<CR>
noremap <localleader>, ,
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" My own awesome plugin
nnoremap <silent> p :call PasteReplaceEmptyLine()<CR>

augroup plugin_commentary
    au!
    au FileType htmldjango setlocal commentstring={#\ %s\ #}
    au FileType php setlocal commentstring=//\ %s
augroup END

augroup ft_html
  au!

  au Filetype jinja,htmldjango inoremap <buffer> {{<space> {{<space><space>}}<left><left><left>
  au Filetype jinja,htmldjango inoremap <buffer> {%<space> {%<space><space>%}<left><left><left>
augroup END

augroup ft_php
  au Filetype php inoremap <buffer> <<space> <?php<space><space>?><left><left><left>
  au Filetype php inoremap <buffer> <<CR> <?php<CR>
augroup END

" a better htmldjango detection
augroup filetypedetect
  " removes current htmldjango detection located at $VIMRUNTIME/filetype.vim
  au! BufNewFile,BufRead *.html
  au  BufNewFile,BufRead *.html   call FThtml()

  func! FThtml()
    let n = 1
    while n < 10 && n < line("$")
      if getline(n) =~ '\<DTD\s\+XHTML\s'
        setf xhtml
        return
      endif
      if getline(n) =~ '{%\|{{\|{#'
        setf htmldjango
        return
      endif
      let n = n + 1
    endwhile
    setf html
  endfunc
augroup END


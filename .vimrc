" This must be first, because it changes other options as side effect.
set nocompatible

" Required by vundle.
filetype off

" Load vundle, vim plugins manager.
set rtp+=~/.vim/bundle/Vundle.vim

" Tell vundle where to store the plugins.
call vundle#begin('~/.vim/bundle')

" Vundle bundles.
Plugin 'VundleVim/Vundle.vim'
Plugin 'dbext.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'L9'
Plugin 'FuzzyFinder'
" Plugin 'wombat256.vim'
Plugin 'chriskempson/vim-tomorrow-theme'
" Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'https://github.com/wincent/command-t.git'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'bufexplorer.zip'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
" Plugin 'godlygeek/tabular'
" Plugin 'guns/vim-sexp'
" Plugin 'tpope/vim-sensible'
Plugin 'Shougo/vimproc.vim'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'Shougo/neocomplete.vim'

call vundle#end()

" Removed because of vundle.
" filetype plugin on

" Enable color syntax highlighting and overwrite highlight colors.
syntax on

" Enable filetype detection and indentation.
filetype plugin indent on

" let g:slimv_lisp='"clj"'

" Do not create backups.
set noswapfile
set nobackup

" Wrap searches around the file.
set wrapscan

" Enable spell checking.
set spell

" Show line numbers.
set number

" When a bracket is inserted, briefly jump to the matching
" one. The jump is only done if the match can be seen on the
" screen. The time to show the match can be set with
" 'matchtime'.
set showmatch

" When there is a previous search pattern, highlight all
" its matches.
set hlsearch

" While typing a search command, show immediately where the
" so far typed pattern matches.
set incsearch

" Ignore case in search patterns.
set ignorecase

" Override the 'ignorecase' option if the search pattern
" contains upper case characters.
set smartcase

" Copy indent from current line when starting a new line
" (typing <CR> in Insert mode or when using the "o" or "O"
" command).
set autoindent

" Automatically save before commands like :next and :make
set autowrite

" Make backspace work like most other apps
set backspace=2

" Maximum width of text that is being inserted. A longer
" line will be broken after white space to get this width.
set textwidth=79

" Show the line and column number of the cursor position,
" separated by a comma.
set ruler

" Enable the use of the mouse.
set mouse=a

" When set to "dark", Vim will try to use colors that look
" good on a dark background. When set to "light", Vim will
" try to use colors that look good on a light background.
" Any other value is illegal.
" set background=dark

" Color scheme.
colorscheme Tomorrow-Night
" colorscheme desert

" Do not close buffers when opening new ones, just hide them.
set hidden

set encoding=utf-8
set showcmd

" Show vim powerline.
set laststatus=2

" Highlight current line
set cursorline

" Visual autocomplet for command menu
set wildmenu

" Redraw only when we need
set lazyredraw

" Highlight matching paranthesis
set showmatch

" Enable folding
set foldenable

" Open fold by default
set foldlevelstart=10

" Max 10 nested folds
set foldnestmax=10

" Fold by indentation
set foldmethod=indent

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Disable movement arrows in insert mode.
inoremap <Up>      <NOP>
inoremap <Down>    <NOP>
inoremap <Left>    <NOP>
inoremap <Right>   <NOP>

" Disable movement keys in visual mode.
" noremap <Up>       <NOP>
" noremap <Down>     <NOP>
" noremap <Left>     <NOP>
" noremap <Right>    <NOP>

" Use Q for formatting the current paragraph (or selection).
vmap Q gq
nmap Q gqap

" Toggle NERDTree.
map <F2> :NERDTreeToggle<CR>

" Use comma as <Leader> key instead of backslash.
let mapleader=","

map <Leader>l :ls<CR>

" Double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14.
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Key mappings for CommandT.
"map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
"map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

"let g:CommandTCursorLeftMap  = ['<Esc>OD', '<LEFT>']
"let g:CommandTCursorRightMap = ['<Esc>OC', '<RIGHT>']
"let g:CommandTSelectNextMap  = ['<Esc>OB', '<DOWN>']
"let g:CommandTSelectPrevMap  = ['<Esc>OA', '<UP>']

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<cr>
nmap <silent> <leader>sv :so $MYVIMRC<cr>

" Enable color syntax highlighting and do not overwrite highlight colors. 
" syntax enable

set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey ctermfg=black guibg=#131319 guifg=white


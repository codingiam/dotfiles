" This must be first, because it changes other options as side effect.
set nocompatible

" Required by vundle and pathogen.
filetype off

" Load pathogen, vim plugins manager.
" call pathogen#infect()

" Load vundle, vim plugins manager.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle bundles.

" Vundle, the plug-in manager for Vim.
Plugin 'gmarik/Vundle.vim'

" Provides database access to many DBMS.
Plugin 'dbext.vim'

" A Git wrapper so awesome, it should be illegal.
Plugin 'tpope/vim-fugitive'

" Lightweight support for Ruby's Bundler.
Plugin 'tpope/vim-bundler'

" Ruby configuration files.
"Plugin 'vim-ruby/vim-ruby'

" Ruby on Rails power tools.
Plugin 'tpope/vim-rails.git'

" It's like rails.vim without the Rails.
Plugin 'tpope/vim-rake'

" Quoting/parenthesizing made simple.
Plugin 'tpope/vim-surround'

" Wisely add "end" in ruby, endfunction/endif/more in vim script, etc.
Plugin 'tpope/vim-endwise'

" Perform all your vim insert mode completions with Tab.
Plugin 'ervandew/supertab'

" Syntax checking hacks for vim.
Plugin 'scrooloose/syntastic'

" Vim-script library, which provides some utility functions and commands.
Plugin 'L9'

" Provides convenient ways to quickly reach the buffer/file/command/bookmark/tag you want.
Plugin 'FuzzyFinder'

" Color scheme.
Plugin 'wombat256.vim'

" Extremely fast, intuitive mechanism for opening files with a minimal number of keystrokes.
Plugin 'git://git.wincent.com/command-t.git'

" A tree explorer plugin for vim.
Plugin 'scrooloose/nerdtree'

" The ultimate vim statusline utility.
"Plugin 'Lokaltog/vim-powerline'

" With bufexplorer, you can quickly and easily switch between buffers.
Plugin 'bufexplorer.zip'

" Vim Cucumber runtime files.
Plugin 'tpope/vim-cucumber'

" Vim runtime files for Haml, Sass, and SCSS.
Plugin 'tpope/vim-haml'

" Vastly improved Javascript indentation and syntax support.
Plugin 'pangloss/vim-javascript'

" CoffeeScript support for vim.
Plugin 'kchmck/vim-coffee-script'

" EasyMotion provides a much simpler way to use some motions in vim.
Plugin 'Lokaltog/vim-easymotion'

" A Vim plugin which shows a git diff in the 'gutter'.
Plugin 'airblade/vim-gitgutter'

" Vim plugin for browsing the tags of source code files.
Plugin 'majutsushi/tagbar'

" Vim plugin for commenting.
Plugin 'scrooloose/nerdcommenter'

" Color scheme.
"Plugin 'altercation/vim-colors-solarized'

" Leand and mean status/tabline.
Plugin 'bling/vim-airline'

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

" Relative line numbers
set relativenumber 

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

" Expand tabs to spaces.
set expandtab

" Use 2 spaces tabstops.
set tabstop=2 shiftwidth=2 softtabstop=2

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
set background=dark

" Color scheme.
colorscheme wombat256mod
"colorscheme desert
"colorscheme solarized

" Do not close buffers when opening new ones, just hide them.
set hidden

set encoding=utf-8
set showcmd

" Show vim status line.
set laststatus=2

" Disable movement arrows in insert mode.
"inoremap <Up>      <NOP>
"inoremap <Down>    <NOP>
"inoremap <Left>    <NOP>
"inoremap <Right>   <NOP>

" Disable movement keys in visual mode.
noremap <Up>       <NOP>
noremap <Down>     <NOP>
noremap <Left>     <NOP>
noremap <Right>    <NOP>

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
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

let g:CommandTCursorLeftMap  = ['<Esc>OD', '<LEFT>']
let g:CommandTCursorRightMap = ['<Esc>OC', '<RIGHT>']
let g:CommandTSelectNextMap  = ['<Esc>OB', '<DOWN>']
let g:CommandTSelectPrevMap  = ['<Esc>OA', '<UP>']

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<cr>
nmap <silent> <leader>sv :so $MYVIMRC<cr>

" Shortcut for tagbar
nmap <F3> :TagbarToggle<CR> 

" Enable color syntax highlighting and do not overwrite highlight colors. 
"syntax enable

set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey ctermfg=black guibg=#131319 guifg=white


" Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/vundle/Vundle.vim

call vundle#begin('~/.vim/vundle')

Bundle 'gmarik/Vundle.vim'
" Bundle 'Valloric/YouCompleteMe'
Bundle 'ntpeters/vim-better-whitespace'
Bundle "jQuery"
Bundle "rails.vim"
Bundle "vim-ruby/vim-ruby"
Bundle "hari-rangarajan/CCTree"
Bundle "fatih/vim-go"
Bundle "tpope/vim-surround.git"
Bundle "tpope/vim-ragtag.git"
Bundle 'tpope/vim-fugitive'
Bundle "tpope/vim-rbenv"
Bundle "tpope/vim-rake"
Bundle "tpope/vim-endwise"
Bundle "tpope/vim-bundler"
Bundle "craigemery/vim-autotag"
Bundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Bundle 'autoload_cscope.vim'
Bundle 'kien/ctrlp.vim'

call vundle#end()

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set timeoutlen=4000               " timeout for multi-keyed macros

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set nonumber                      " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=5                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location

set tabstop=4                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

set tags=tags;                    " works with 'set autochdir'
set tags=./tags; 

"
" Automatic fold settings for specific files. Uncomment to use.
"
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

"
" Tab mappings.
"
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

filetype on

map <silent> <C-h> <C-w><
map <silent> <C-j> <C-W>-
map <silent> <C-k> <C-W>+
map <silent> <C-l> <C-w>>

" Uncomment to use Jamis Buck's file opening plugin
"map <Leader>t :FuzzyFinderTextMate<Enter>

"Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;



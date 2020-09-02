" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! ubuntu.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
"
" Automatically download and install vim-plug if it is not already
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" A color scheme
Plug 'junegunn/seoul256.vim'

" Disctraction free editiing
Plug 'junegunn/goyo.vim'

" Autocomplete
Plug 'Valloric/YouCompleteMe'

" Reasonable default settings
Plug 'tpope/vim-sensible'

" Advanced git integration
Plug 'tpope/vim-fugitive'

" Show git diffs
Plug 'mhinz/vim-signify'

" Quick commenting
Plug 'tpope/vim-commentary'

" Easy edit of pgp encrypted files
Plug 'jamessan/vim-gnupg'

" Colors on my parentheses
Plug 'junegunn/rainbow_parentheses.vim'

" Improved status bar
Plug 'vim-airline/vim-airline'

" Themes for the status bar
Plug 'vim-airline/vim-airline-themes'

" Directory tree exploration
Plug 'scrooloose/nerdtree'

" Git integration for NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin'

" Themes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'

" Maps for cscope
Plug 'chazy/cscope_maps'

" xolox's vim script library
Plug 'xolox/vim-misc'
"
" Enhanced session management
Plug 'xolox/vim-session'

Plug 'frazrepo/vim-rainbow'

let g:deoplete#enable_at_startup = 1

call plug#end()

" Set default theme
set background=dark
colo gruvbox

" F2 will open/close file tree of current dir
map <F2> :NERDTreeToggle<CR>

let g:airline_powerline_fonts = 1

set number


" Speed up scrolling in Vim
set ttyfast

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>


" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase


" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

set encoding=utf-8

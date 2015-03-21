"Using Pathogen for plugins, any plugins that need to be added should be put
"in ~/.vim/bundle
"https://github.com/tpope/vim-pathogen

execute pathogen#infect()

"ruby syntax settings
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"auto opens nerd tree
autocmd vimenter * NERDTree
"shows dot files
"let NERDTreeShowHidden=1

"shows line numbers
set number

"uses spaces instead of tabs
set tabstop=2
set shiftwidth=2
set expandtab

"strips trailing whitespace
autocmd FileType c,cpp,clj,eruby,html,java,javascript,php,ruby autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd BufWritePre * :%s/\s\+$//e

"allows yank into os clipbaord
set clipboard+=unnamed

"ctrl-p searching
set runtimepath^=~/.vim/bundle/ctrlp.vim

"color scheme
set t_Co=256
colorscheme Benokai

set backspace=2         " backspace in insert mode works like normal editor
syntax on               " syntax highlighting
filetype indent on      " activates indenting for files
set autoindent          " auto indenting
set number              " line numbers
set nobackup
set ignorecase
set hlsearch
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
colorscheme desert      " colorscheme desert
"colorscheme apprentice

let mapleader = ','

"----Search----"
set hlsearch
set incsearch
nmap <Leader><space> :nohlsearch<cr>

"----Split management----"
set splitbelow
set splitright
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"----Auto-commands----"
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

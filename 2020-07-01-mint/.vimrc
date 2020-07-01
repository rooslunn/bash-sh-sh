set nocompatible "We want the latest Vim settings/options
filetype off                  " required

so ~/.vim/plugins.vim "
so ~/.vim/cursor.vim

syntax enable
colorscheme nord

set backspace=indent,eol,start "Make backspace behave like every other editor
let mapleader = ',' "The default leader is \, but a comma is much better
set number "activates line numbers
set noerrorbells visualbell t_vb= "NO damn bells!
set autowriteall "Automatically write file when switchin buffer
set complete=.,w,b,u "Set our desired autocompletion matching
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set linespace=15 "set line spacing (MacVim specific)
set nowrap

"---------------Search--------------"
set hlsearch
set incsearch

"---------------Split Management--------------"
set splitbelow
set splitright
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"---------------Explore---------------"
let g:netrw_banner = 0
"let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
"let g:netrw_altv = 1
let g:netrw_winsize = 10

"augroup ProjectDrawer
  "autocmd!
  "autocmd VimEnter * :Vexplore
"augroup END

autocmd FileType netrw setl bufhidden=wipe

"---------------Mappings--------------"

"Make it easy to edit the Vimrc file
"nmap <Leader>ev :tabedit $MYVIMRC<cr>

"add simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

" Comment/Uncommnt
"let Comment='//'
"xnoremap # :norm 0i<C-r>=Comment<CR><CR>
"xnoremap & :norm ^<C-r>=len(Comment)<CR>x<CR>

" PHP lint
map <C-F5> :!php -l %<CR>

" Ctags
nmap <Leader>f :tag<space>

"--------------Snippets------------------"
inoremap {<CR>  {<CR>}<Esc>O

"--------------Auto-Commands------------"
"autocmd InsertEnter * set cul           "Indicate insert mode Enter
"autocmd InsertLeave * set nocul         "Indicate insert mode Leave

"Automatically source the Vimrc file on save.
"augroup autosourcing
"  autocmd!
"  autocmd BufWritePost .vimrc source %
"augroup END

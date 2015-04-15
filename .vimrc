syntax on
filetype on
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set smartcase
set ignorecase
set modeline
set nocompatible
set encoding=utf-8
set hlsearch

let mapleader = ","

" I accidentally hit F1 all the time
imap <F1> <Esc>

" nice try, Ex mode
map Q <Nop>
" who uses semicolon anyway?
map ; :

" Pathogen
call pathogen#infect()
filetype plugin indent on

" ==== custom macros ====
" Delete a function call. example:  floor(int(var))
"         press when your cursor is       ^        results in:
"                                   floor(var)
map <C-H> ebdw%x<C-O>x

" Insert a timestamp
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" run ctags in current directory
filetype plugin on
map <C-F12> :!ctags -R -I --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Tagbar shortcut
nmap <F8> :TagbarToggle<CR>

" CtrlP File finder
nmap <Leader>t :CtrlP<CR>
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\/node_modules$\|\/build$',
  \ }

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_c_include_dirs = [ 'src', 'build' ]
let g:syntastic_cpp_include_dirs = [ 'src', 'build' ]

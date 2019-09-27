" UTF8
set encoding=utf-8
colo delek
syntax on

" Enable line numbers
set number
set relativenumber

" Set indents
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" AutoComplete close
let g:ycm_autoclose_preview_window_after_completion=1

set nocompatible              " required
filetype off                  " required

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Add plugins below here
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'bitc/vim-bad-whitespace'

call vundle#end()            " required
filetype plugin indent on    " required


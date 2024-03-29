call plug#begin('~/.vim/plugged')

" UI related
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" syntax check
Plug 'dense-analysis/ale'
" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
" Formater

call plug#end()

"let g:python_host_prog = '/home/spiers/.pyenv/versions/neovim2/bin/python'
"let g:python3_host_prog = '/home/spiers/.pyenv/versions/neovim3/bin/python'

" basics
filetype plugin indent on
syntax on set number
set relativenumber
set incsearch
set ignorecase
set smartcase
set nohlsearch
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set nobackup
set noswapfile
set nowrap

" plugin settings

" deoplete
let g:deoplete#enable_at_startup = 1
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Theme
syntax enable

" ALE
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1

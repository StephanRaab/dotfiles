set number
set relativenumber
syntax on

set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
call vundle#end()

filetype plugin indent on
filetype indent on

" remap the escape key to jk
inoremap jk <esc>

set runtimepath^=~/.vim/bundle/ctrlp.vim

" set tabs to 2, expandtab turns tabs into spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set statusline+=%warningmsg#
set statusline +=%*

set laststatus=2

if !has('gui-running')
  set t_Co=256
endif

let g:lightline = {
  \'colorscheme': 'seoul256',
  \}

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

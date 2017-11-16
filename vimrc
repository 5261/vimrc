" Vundle begin
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
call vundle#end()
filetype plugin indent on
" Vundle end

" YouCompleteMe begin
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
" YouCompleteMe end

set number
set ruler

set shiftwidth=4
set tabstop=4
set expandtab

set backspace=indent,eol,start

" set sm

syntax enable
syntax on

inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

inoremap <CR> <c-r>=CloseBrace()<CR>
function CloseBrace()
    if getline('.')[col('.') - 2] == '{'
        return "\<CR>}\<UP>\<ESC>A\<CR>"
    else
        return "\<CR>"
    endif
endfunction

let mapleader=' '

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :qa!<CR>

nnoremap <leader>a ggvG"+y
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>y "+y

nnoremap <leader>j $J<LEFT>r,
nnoremap <leader>d O#ifdef DEBUG<ESC>jo#endif<ESC>

let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

highlight LineNr ctermbg=388

let g:user_emmet_mode='n'
let g:user_emmet_leader_key='<leader>e'


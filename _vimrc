set number
set clipboard=unnamedplus
set mouse=a


call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'

call plug#end()


" Open nerdtree
autocmd VimEnter * if argc() == 0 | NERDTree | endif

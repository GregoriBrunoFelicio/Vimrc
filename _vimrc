set number
set clipboard=unnamedplus
set mouse=a
set encoding=UTF-8
set termguicolors


call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


" Open nerdtree
autocmd VimEnter * if argc() == 0 | NERDTree | endif
highlight! link NERDTreeFlags NERDTreeDir

" Icons
" Define custom colors for filetype icons
highlight NERDTreeDir guifg=#ffc300
highlight NERDTreeDirSlash guifg=#ffc300
highlight NERDTreeOpenable guifg=#ffc300
highlight NERDTreeClosable guifg=#ffc300
highlight DevIconFolder guifg=#ffc300

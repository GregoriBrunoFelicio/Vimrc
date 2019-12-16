set clipboard=unnamed
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction
autocmd VimEnter * call StartUp() " SE INICIAR SEM NENHUM ARQUIVO ESPECÍFICO, AUTOMATICAMENTE ABRE O NERDTREE
au GUIEnter * simalt ~x " ENTRA EM MODO TELA CHEIA
if has("gui_running")
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
    set lines=200 columns=100
    " set guifont=Noto_Mono_for_Powerline:h11:cANSI
    set encoding=utf8
    if has("win32") || has("win64") || has("win16")
        set renderoptions=type:directx
    endif
endif
filetype plugin on
syntax on
set rnu
set number
set tabstop=4
set ai
set showcmd
set cursorline
set hlsearch
set ignorecase
set novisualbell
set noerrorbells
set showmatch
set nobackup
set nowritebackup
set backspace=2 " make backspace work like most other apps
set shiftwidth=4
set nowrap
set tags=tags;
set colorcolumn=80
set list
set listchars=tab:>-     " > is shown at the beginning, - throughout
set expandtab
set path+=**
set wildmenu


" Plugins 

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kadekillary/Turtles'
Plug 'scrooloose/nerdtree'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()
colorscheme turtles
let g:airline_theme='jellybeans'


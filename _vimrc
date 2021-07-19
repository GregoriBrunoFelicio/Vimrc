set clipboard=unnamed

let g:javascript_plugin_jsdoc = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp() " SE INICIAR SEM NENHUM ARQUIVO ESPECÍFICO, AUTOMATICAMENTE ABRE O NERDTREE
au GUIEnter * simalt ~x " ENTRA EM MODO TELA CHEIA

call plug#begin()
Plug '/scrooloose/nerdtree'
Plug 'omnisharp/omnisharp-vim'
Plug 'pangloss/vim-javascript'
call plug#end()

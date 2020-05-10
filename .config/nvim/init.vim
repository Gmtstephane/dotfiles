call plug#begin('~/.local/share/nvim/plugged')


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/goyo.vim'

call plug#end()
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0

color nord
syntax on
set nu
set guifont="Source Code Pro for Powerline" 12
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif



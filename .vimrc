set noswapfile
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
syntax on
set number

set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

call plug#begin()
    Plug 'dylanaraps/wal.vim'
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'pradyungn/Mountain', {'rtp': 'vim'}
    Plug 'ycm-core/YouCompleteMe'
call plug#end()

colorscheme wal

nnoremap <C-t> :NERDTreeToggle<CR>

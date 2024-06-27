set noswapfile
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
syntax on
set number
set termguicolors

set laststatus=2
set noshowmode

"set nocompatible

set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

call plug#begin()
    Plug 'dylanaraps/wal.vim'
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'ycm-core/YouCompleteMe'
    Plug 'itchyny/lightline.vim'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'rose-pine/vim'
    Plug 'catppuccin/vim', { 'as': 'catppuccin' }
    Plug 'morhetz/gruvbox'
    Plug 'itchyny/vim-gitbranch'
    Plug 'tpope/vim-fugitive'
    Plug 'fxn/vim-monochrome'
    Plug 'morhetz/gruvbox'
    Plug 'mattn/emmet-vim'
call plug#end()

set background=dark
let g:gruvbox_contrast_light = 'soft'
colorscheme rosepine

nnoremap <C-t> :NERDTreeToggle<CR>

let g:lightline = {
            \ 'colorscheme': 'rosepine',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

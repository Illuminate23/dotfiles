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
set mouse=
"set nocompatible

set completeopt-=preview 
let g:ycm_add_preview_to_completeopt = 0

set guicursor=n-v-c-i:block "курсор

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
    Plug 'folke/tokyonight.nvim'
    Plug 'fxn/vim-monochrome'
    Plug 'morhetz/gruvbox'
    Plug 'mattn/emmet-vim'
    Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
    Plug 'neovim/nvim-lspconfig'
    Plug 'yaegassy/coc-blade', {'do': 'yarn install --frozen-lockfile'}
    Plug 'jwalton512/vim-blade'
call plug#end()

set background=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme tokyonight

nnoremap <C-t> :NERDTreeToggle<CR>
lua require"bufferline".setup()

let g:lightline = {
            \ 'colorscheme': 'tokyonight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

lua << EOF
require'lspconfig'.phpactor.setup{
    on_attach = on_attach,
    init_options = {
        ["language_server_phpstan.enabled"] = false,
        ["language_server_psalm.enabled"] = false,
    }
}
EOF

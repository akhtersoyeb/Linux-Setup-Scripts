syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set relativenumber
set nowrap
set smartcase
set ignorecase
set noswapfile
set nobackup
set undodir=~/.local/share/nvim/undodir
set undofile
set incsearch
set nohlsearch
set title
set clipboard+=unnamedplus
filetype plugin on 

" set Esc to jj 
imap jj <Esc>


call plug#begin('~/.local/share/nvim/autoload/plug.vim')
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
" call :PlugInstall to install new plugins
call plug#end()

colorscheme gruvbox
set background=dark

" fzf 
nnoremap <C-p> :Files<Cr>
let g:fzf_layout = { 'down': '40%' }

" Nerd Commenter
map <C-_> <leader>c<space>
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments

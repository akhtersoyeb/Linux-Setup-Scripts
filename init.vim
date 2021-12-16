" call source % - whenever this file changes
" call :PlugInstall - to install new plugins
" call :PlugClean - to remove unused plugins

syntax on

set colorcolumn=80
set noerrorbells
set expandtab
set tabstop=4 
set softtabstop=4
set shiftwidth=4
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
filetype plugin indent on 

" set Esc to jj 
imap jj <Esc>

" .yml/.yaml file configuration
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml 
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Plugins
call plug#begin('~/.local/share/nvim/autoload/plug.vim')
Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' 
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'rust-lang/rust.vim'
Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'
Plug 'neovim/nvim-lspconfig'
call plug#end()

" Colorscheme
colorscheme gruvbox

" fzf 
nnoremap <C-p> :Files<Cr>
let g:fzf_layout = { 'down': '40%' }

" Nerd Commenter
map <C-_> <leader>c<space>
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments

" Format Rust file automatically after saving 
let g:rustfmt_autosave = 1

" HTML tags autoclosing config
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js, *.jsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a 'valid' region (based on filetype)
"
let g:closetag_regions = {'typescript.tsx': 'jsxRegion,tsxRegion','javascript.jsx': 'jsxRegion','typescriptreact': 'jsxRegion,tsxRegion','javascriptreact': 'jsxRegion'}

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'



set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set notermguicolors
set scrolloff=8

set backspace=indent,eol,start

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'morhetz/gruvbox'
Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'

Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'

Plug 'junegunn/seoul256.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

"colorscheme morning
"colorscheme dracula
colorscheme gruvbox
set background=dark
"set background=light

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let g:vrfr_rg = 'true'

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>w :update<CR>

nnoremap <F3> :ls<CR>

" Undotree
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>

" NerdTree
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>rr :NERDTreeRefreshRoot<CR>
let NERDTreeShowHidden=1

" Pesquisa em todos os arquivos por um string: Rg metodo
" Precisa ser instalado por fora: apt installs ripgrep 
nnoremap <Leader>ps :Rg<SPACE>


" Coc
"nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <leader>gg :call CocAction('jumpDefinition', 'split')<CR>
nmap <leader>gt :call CocAction('jumpDefinition', 'tabe')<CR>
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
"nmap <leader>gy <Plug>(coc-type-definition)
"nmap <leader>gi <Plug>(coc-implementation)
"nmap <leader>gr <Plug>(coc-references)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next)
nnoremap <leader>cr :CocRestart

" FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

abbr pyb1 {%%}
abbr pyb2 {%%}{%%}
abbr pyb3 {{}}


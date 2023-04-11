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
set cursorline

set backspace=indent,eol,start

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'

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
Plug 'MattesGroeger/vim-bookmarks'

call plug#end()

"colorscheme dracula
"set background=light
"colorscheme gruvbox
"set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let g:vrfr_rg = 'true'

"let g:netrw_browse_split = 2
"let g:netrw_banner = 0
"let g:netrw_winsize = 25

let mapleader = " "

nnoremap <F2> :update<CR>
nnoremap <F3> :ls<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>w :update<CR>
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" Undotree
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>

" NerdTree
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <Leader>rr :NERDTreeRefreshRoot<CR>
let NERDTreeShowHidden=1

" Pesquisa em todos os arquivos por um string: Rg metodo
" Precisa ser instalado por fora: apt installs ripgrep 
nnoremap <Leader>ps :Rg<SPACE>


" Coc
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <leader>gg :call CocAction('jumpDefinition', 'split')<CR>
nmap <leader>gt :call CocAction('jumpDefinition', 'tabe')<CR>
nmap <F2> :call CocAction('doHover')<CR>
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <leader>gy <Plug>(coc-type-definition)
"nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next)

nnoremap <leader>cr :CocRestart

" FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>


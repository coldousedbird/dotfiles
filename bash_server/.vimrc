" GLOBALS
let mapleader = ' '
let maplocalleader = '\'
let g:loaded_netrwPlugin = 0

" OPTIONS
" basic
set clipboard=unnamedplus
set number
set relativenumber
set cursorline
set nowrap
set scrolloff=7
set sidescrolloff=7
" cyrillic additional layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set autoindent
set smarttab

" search
set ignorecase
set smartcase
set hlsearch
set incsearch

" visuals
if has('termguicolors')
  set termguicolors
endif
set signcolumn=no
set showmatch
set matchtime=2
set cmdheight=1
set completeopt=menuone,noinsert,noselect
set noshowmode
set pumheight=10
if has('nvim') " pumblend requires Neovim
  set pumblend=10
endif
if exists('+winblend') " winblend requires Neovim or Vim 8.2+
  set winblend=0
endif
set conceallevel=0
set concealcursor=
set lazyredraw
set synmaxcol=300

" behavior
set hidden
set noerrorbells
set backspace=indent,eol,start
set noautochdir
set selection=exclusive
set mouse=a
set modifiable
set encoding=UTF-8

" File handling
set nobackup
set nowritebackup
set noswapfile
if has('persistent_undo')
  set undofile
  set undodir=~/.vim/undodir
endif
set updatetime=300
set timeoutlen=500
set ttimeoutlen=0
set autoread
set noautowrite

set wildmenu
set wildmode=longest:full,full
set splitright

" Path and keyword options
set path+=**
set iskeyword+=-

" Colors and transparency
colorscheme everforest
highlight Normal guibg=none
highlight NonText guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" KEY MAPPINGS
" Menus (Note: Mason and Yazi commands require Neovim plugins)
nnoremap <leader>m :echo "Mason requires Neovim plugin"<CR>
nnoremap <leader>y :echo "Yazi requires Neovim plugin"<CR>

" LSP mappings (Note: LSP functions require Neovim/LSP plugins)
nnoremap <leader>h :echo "LSP hover requires Neovim/LSP setup"<CR>
nnoremap <leader>d :echo "LSP definition requires Neovim/LSP setup"<CR>
nnoremap <leader>f :echo "LSP format requires Neovim/LSP setup"<CR>
nnoremap <leader>c :echo "LSP code actions requires Neovim/LSP setup"<CR>

" Tabs
nnoremap <leader>t :tabe<CR>
nnoremap t :tabn<CR>
nnoremap <S-t> :tabp<CR>

" Windows
nnoremap <leader>vs :vsplit<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-S-h> :vertical resize +6<CR>
nnoremap <C-S-j> :resize +3<CR>
nnoremap <C-S-k> :resize -3<CR>
nnoremap <C-S-l> :vertical resize -6<CR>

" File Navigation
nnoremap K 2<C-y>2k
nnoremap J 2<C-e>2j

" Search
nnoremap N Nzzzv
nnoremap n nzzzv

" Editing
nnoremap <leader>w :write<CR>
nnoremap <leader>q :quit<CR>
nnoremap <leader>o :so %<CR>
nnoremap U <C-r>
nnoremap <C-,> $a,<Esc>
nnoremap <C-Return> $a<CR><Esc>
nnoremap == gg=G
nnoremap <C-k> i[](<Esc>pa)<Esc>F[a

" Visual mode mappings
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap p "0p
xnoremap <leader>p "_dP

" Help window in tab (simplified for Vim)
autocmd BufWinEnter *.txt wincmd T

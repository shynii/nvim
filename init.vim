" GENERAL
" ====>
  " Smart indentation
  set autoindent
  set smartindent

  " Tab stops
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab

  " Unicode
  set encoding=utf-8

  " Highlight matching brace/parenthese/bracket
  set showmatch

  " Visual bell
  set vb t_vb=
  set novisualbell

  " Watch for file changes
  set autoread

  " Backup files
  set nobackup
  set nowb
  set noswapfile

  " Set <Leader> key
  let  mapleader = ','
  let g:mapleader = ','

  set nocompatible
  filetype indent plugin on
  set clipboard=unnamedplus
" ====<



" PLUGINS
" ====>
call plug#begin('~/.config/nvim/plugged')
  Plug 'mbbill/undotree'
  Plug 'raimondi/delimitmate'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'pangloss/vim-javascript', { 'for': 'javascript'}
  Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
  Plug 'rhysd/vim-crystal', { 'for': 'crystal' }
  Plug 'rust-lang/rust.vim', { 'for': 'rust' }
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'godlygeek/tabular', { 'on': 'Tabularize' }
  Plug 'ervandew/supertab'
  Plug 'scrooloose/nerdcommenter'
  Plug 'vim-airline/vim-airline'
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'cespare/vim-toml', { 'for': 'toml' }
  Plug 'mattn/emmet-vim', { 'for': ['html', 'css'] }
  Plug 'jszakmeister/vim-togglecursor'
  Plug 'vim-syntastic/syntastic'
call plug#end()

  " Supertab config
  set wildmenu
  set wildmode=list:longest,full

  " Tabular config
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>

  " Undootree config
  map	<leader>y	:UndotreeToggle<CR>
  if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
  endif

  " Nerdtree config
  map <leader>o	:NERDTreeToggle<CR>

  " Syntastic config
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  let g:syntastic_rust_checkers = ['rustc']

  " Tooglecursor config
  let g:togglecursor_default = 'blinking_line'
" ====<



" SPELL CHECKING
" ====>
  " Turn off spell checking (colors made text unreadable)
  set nospell
  set spelllang=en

  " Show only 9 suggestions for misspelled words
  set spellsuggest=9
" ====<



" SEARCH
" ====>
  " Incremental search with ignore case (except explicit caps)
  set incsearch
  set ignorecase
  set smartcase
  set showmatch
  set hlsearch

  " Clear search highlighting
  "nnoremap <leader><space> :noh<cr>

  " Search highlighting
  set hls
  "set nohls

  " Center search results while browsing
  map N Nzz
  map n nzz
" ====<



" DECORATION
" ====>
  " Turn on line numbering
  set number
  set numberwidth=1

  " Highlight curret line
  set cursorline

  " Set colorsheme
  color dracula

  " Enable colosheme
  syntax on
" ====<



" STATUSBAR
" ====>
  " Turn on statusbar
  set ruler

  " Always show the statusline
  set laststatus=2

  let g:airline#extensions#tabline#enabled = 1
  let g:airline_theme = 'tomorrow'
  " Nice themes: hybrid, ubaryd, zenburn, tomorrow

  " Disable whitespace extension
  let g:airline#extensions#whitespace#enabled = 0
" ====<



" SAVING
" ====>
  " Save with ctrl+s
  map   <c-s> <esc>:w<cr>
  imap  <c-s> <c-o><c-s>
  imap  <c-s> <esc><c-s>
" ====<



" MOTIONS
" ====>
  " Move a line of text using ALT+[jk] (Comamnd+[jk] on mac)
  nmap <silent> <M-j> mz:m+<cr>`z
  nmap <silent> <M-k> mz:m-2<cr>`z
  vmap <silent> <M-j> :m'>+<cr>`<my`>mzgv`yo`z
  vmap <silent> <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

  " Move up and down by screen lines, not file lines
  nnoremap j gj
  nnoremap k gk

  " Keep at least 3 lines above/below
  set scrolloff=3

  " Keep at least 2 lines left/right
  set sidescrolloff=2

  " Enable mouse support
  set mouse=a

  " Move over buffers with tab
  noremap <S-Tab>		:bprevious<CR>
  noremap <Tab>			:bnext<CR>
" ====<

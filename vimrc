syntax on
set background=dark

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
if has("autocmd")
  filetype plugin indent on
endif

set showcmd
set showmatch
set ignorecase
set smartcase
set incsearch
set hidden
set autoindent
set cindent
set fileencodings=utf-8

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

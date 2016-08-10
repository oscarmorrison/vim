" VIMRC - Oscar Morrison - me@oscarmorrison.com "

" General "
set history=500
filetype plugin on
filetype indent on
set autoread
set ignorecase
set smartcase
set hlsearch
set incsearch
set expandtab
let mapleader = ","

" Visual "
set so=40
set ruler
syntax enable
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set relativenumber
set number
set laststatus=2
set ttimeoutlen=50
set encoding=utf-8
hi Search cterm=NONE ctermfg=black ctermbg=blue
let g:netrw_liststyle=3 "Explorer Style

" Shortcuts "
nnoremap <leader>nh :noh<CR>

if has("mouse")
	set mouse=a
endif

" Airline Specific "
set guifont=Source\ Code\ Pro\ for\ Powerline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" Vim Plug "
call plug#begin('~/.vim/plugged')

" Base16 color schemes "
Plug 'chriskempson/base16-vim'

" CommandT "
Plug 'wincent/command-t'

" Auto Complete"
Plug 'vim-scripts/AutoComplPop'

" Air line "
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
Plug 'edkolev/promptline.vim'

" Fugitive Git Wrapper "
Plug 'tpope/vim-fugitive'

" Surround "
Plug 'tpope/vim-surround'
"
" Multi Cursors"
Plug 'terryma/vim-multiple-cursors'
" let g:multi_cursor_use_default_mapping=0
" let g:multi_cursor_next_key='<C-d>'
" let g:multi_cursor_quit_key='<Esc>'

call plug#end()

" Base16 "
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
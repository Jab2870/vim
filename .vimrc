" set non-compatible
set nocompatible

" set syntax highlighting
syntax on

" start pathogen
call pathogen#infect()
call pathogen#helptags()

" set relative ruler with current line as real line number
set relativenumber
set number

" set tabwidth
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4

" Add invisivle character reperesentation
set list listchars=tab:»\ ,trail:\␣,eol:↩

" make search highlight as you type
set incsearch

" Set Gui Font
" set guifont=fira_code

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

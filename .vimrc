" Standard setup {{{1
" set non-compatible
set nocompatible

" set syntax highlighting
syntax on

" Enable netrw
filetype plugin indent on

" start pathogen
call pathogen#infect()
call pathogen#helptags()

"Leaders {{{1
let mapleader = ","
let maplocalleader = "\\"

" Config {{{1
" Set auto read so a file is updated if externally changed
set autoread

" Turn on mouse Interaction
set mouse=a

" Set default split to be right or bottom
set splitright
set splitbelow

" Tell vim it's a fast terminal
set ttyfast

" set relative ruler with current line as real line number
set relativenumber
set number

" search in sub folders
set path+=**

" Display matching files when tab completing
set wildmenu

" set tabwidth
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4

" Add invisivle character reperesentation
set list listchars=tab:»\ ,trail:\␣,eol:↩

" make search highlight as you type
set incsearch

" Make search case insensitive unless I type a capital letter
set ignorecase smartcase

" Make backspace work properly in insert mode
set backspace=indent,eol,start

" Show commands as you type them
set showcmd

" Make vim default to the plus register (system clipboard) when yanking etc.
"set clipboard=unnamedplus


" Plugin Options {{{1

let g:cssColorVimDoNotMessMyUpdatetime = 1

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" Functions {{{1

function! NextMark()
	execute "normal! /(<.>)\<cr>da("
	execute "startinsert"
endfunction

function! NewHtml()
	read ~/Templates/html
	normal! ggdd
	setlocal filetype=html
	"call NextMark()
endfunction

" Mappings {{{1
" Move lines up/down using arrow keys
nnoremap <Down> ddp
nnoremap <Up> ddkP

" Disable Scroll wheel
noremap <ScrollWheelUp> <nop>
noremap <ScrollWheelDown> <nop>

" Make Ctrl C and Ctrl V work on system buffer
" if in visual or insert mode respectively
vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+pa

" Make atrl t open new tab
nnoremap <C-t> :tabnew<cr>

" map gV to select previously pasted
nnoremap <expr> gV    "`[".getregtype(v:register)[0]."`]"
"
" Set :w!! to save with sudo 
cnoremap w!! w !sudo tee %

"Run current line as command
nnoremap Q !!$SHELL <cr>

" Do Shebang line
inoremap <C-y> <Esc>:sil exe ".!which <cWORD>" <bar> s/^/#!/ <bar> filetype detect<cr>YpDi

" DO bullet points
inoremap <C-j> <esc>:exe "norm Ypf lDB\<C-a>"<cr>A

" edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Set double space in insert mode to go to next mark and enter insert mode
inoremap <leader><leader> <Esc>:call NextMark()<cr>

" Abreviations {{{1

iabbrev @@ jonathan@fellowshipproductions.co.uk
iabbrev @@@ jonathan@lunarweb.co.uk



" Start Screen Settings {{{1
fun! Start()
    " Don't run if: we have commandline arguments, we don't have an empty
    " buffer, if we've not invoked as vim or gvim, or if we'e start in insert mode
    if argc() || line2byte('$') != -1 || v:progname !~? '^[-gmnq]\=vim\=x\=\%[\.exe]$' || &insertmode
        return
    endif

    " Start a new buffer ...
    enew

    " ... and set some options for it
    setlocal
        \ bufhidden=wipe
        \ buftype=nofile
        \ nobuflisted
        \ nocursorcolumn
        \ nocursorline
        \ nolist
        \ nonumber
        \ noswapfile
        \ norelativenumber

    " Now we can just write to the buffer, whatever you want.
    call append('$', "")
    for line in split(system('fortune -a | cowsay'), '\n')
        call append('$', '        ' . l:line)
    endfor

    " No modifications to this buffer
    setlocal nomodifiable nomodified

    " When we go to insert mode start a new buffer, and start insert
    nnoremap <buffer><silent> e :enew<CR>
    nnoremap <buffer><silent> i :enew <bar> startinsert<CR>
    nnoremap <buffer><silent> o :enew <bar> startinsert<CR>
endfun

" Run after "doing all the startup stuff"
" autocmd VimEnter * call Start()

" File Type Specific {{{1
augroup file_web
	autocmd!
	"autocmd FileType html,css,less,javascript,php setlocal foldmethod=indent foldenable
augroup END
"
augroup new_html
	autocmd!
	autocmd BufNew,BufNewFile *.html call NewHtml()
augroup END
"
augroup file_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker foldenable
augroup END

""set es6 files to javascript
augroup detectES6
	autocmd!
	autocmd BufNew,BufNewFile,BufRead *.es6 :setlocal filetype=javascript
augroup END




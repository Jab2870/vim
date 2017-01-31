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

" Show commands as you type them
set showcmd

" Set default buffer to system clipboard
set clipboard=unnamedplus

" Move lines up/down using arrow keys
nmap <Down> ddp
nmap <Up> ddkP

let g:cssColorVimDoNotMessMyUpdatetime = 1

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" Make vim default to the plus register (system clipboard) when yanking etc.
set clipboard=unnamedplus

" Shows the command I am typing.  I really wish this could be in airline but don't think it can
set showcmd

" Disable Scroll wheel
:map <ScrollWheelUp> <nop>
:map <ScrollWheelDown> <nop>

" Set :w!! to save with sudo 
cmap w!! w !sudo tee %

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

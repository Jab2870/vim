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

" Set spelcheck language
set spelllang=en_gb

" Set default split to be right or bottom
set splitright
set splitbelow

" Tell vim it's a fast terminal
set ttyfast

" set relative ruler with current line as real line number
set relativenumber
set number

" Stop vim wrapping a line mid-word
set linebreak

" search in sub folders
set path+=**

" Display matching files when tab completing
set wildmenu

" Time vim waits to see if you are pushing another key
set timeoutlen=500

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

" Make the cursor change in insert mode
"Ps = 0  -> blinking block.
"Ps = 1  -> blinking block (default).
"Ps = 2  -> steady block.
"Ps = 3  -> blinking underline.
"Ps = 4  -> steady underline.
"Ps = 5  -> blinking bar (xterm).
"Ps = 6  -> steady bar (xterm).
" let &t_SI = "\e[5 q"
" let &t_EI = "\e[1 q"

" optional reset cursor on start:
" augroup myCmds
" au!
" autocmd VimEnter * silent !echo -ne "\e[2 q"
" augroup END

" Plugin Options {{{1

let g:cssColorVimDoNotMessMyUpdatetime = 1

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" Vimtex
let g:vimtex_view_method = 'zathura'

" Emmet
let g:user_emmet_leader_key="<C-l>"
let g:user_emmet_install_global = 0


" Quick tex options {{{2
" HTML {{{3
let g:quicktex_html = {
	\' '		:  "\<ESC>/<+.*+>\<CR>\"_c/+>/e\<CR>",
	\';b'		:  "<b><+++></b> <++>",
	\';i'		:  "<em><+++></em> <++>",
	\';1'		:  "<h1><+++></h1> <++>",
	\';2'		:  "<h2><+++></h2> <++>",
	\';3'		:  "<h3><+++></h3> <++>",
	\';p'		:  "<p><+++></p> <++>",
	\';a'		:  "<a href=\"<++>\"><+++></a> <++>",
	\';ul'		:  "<ul>\<CR><li><+++></li>\<CR></ul>\<CR>\<CR><++>",
	\';ol'		:  "<ol>\<CR><li><+++></li>\<CR></ol>\<CR>\<CR><++>",
	\';li'		:  "<li><++></li>",
\}
" CSS {{{3
let g:quicktex_css = {
	\' '		:  "\<ESC>/<+.*+>\<CR>\"_c/+>/e\<CR>",
	\
	\'w'		:  "width: <+++>;\<CR><++>",
	\'h'		:  "height: <+++>;\<CR><++>",
	\'mw'		:  "max-width: <+++>;\<CR><++>",
	\'mh'		:  "max-height: <+++>;\<CR><++>",
	\'t'		:  "top: <+++>;\<CR><++>",
	\'b'		:  "bottom: <+++>;\<CR><++>",
	\'l'		:  "left: <+++>;\<CR><++>",
	\'r'		:  "right: <+++>;\<CR><++>",
	\'pos'		:  "position: <+++>;\<CR><++>",
	\
	\'m'		:  "margin: <+++>;\<CR><++>",
	\'mt'		:  "margin-top: <+++>;\<CR><++>",
	\'mb'		:  "margin-bottom: <+++>;\<CR><++>",
	\'ml'		:  "margin-left: <+++>;\<CR><++>",
	\'mr'		:  "margin-right: <+++>;\<CR><++>",
	\
	\'p'		:  "padding: <+++>;\<CR><++>",
	\'pt'		:  "padding-top: <+++>;\<CR><++>",
	\'pb'		:  "padding-bottom: <+++>;\<CR><++>",
	\'pl'		:  "padding-left: <+++>;\<CR><++>",
	\'pr'		:  "padding-right: <+++>;\<CR><++>",
	\
	\'bor'		:  "border: <+++>;\<CR><++>",
	\'bort'		:  "border-top: <+++>;\<CR><++>",
	\'borb'		:  "border-bottom: <+++>;\<CR><++>",
	\'borl'		:  "border-left: <+++>;\<CR><++>",
	\'borr'		:  "border-right: <+++>;\<CR><++>",
	\
	\';abs'		:  "position: absolute;\<CR><++>",
	\';rel'		:  "position: relative;\<CR><++>",
	\';fix'		:  "position: fixed;\<CR><++>",
	\
	\';block'	:  "display: block;\<CR><++>",
	\';inl'		:  "display: inline;\<CR><++>",
	\';inb'		:  "display: inline-block;\<CR><++>",
	\';flex'	:  "display: flex;\<CR><++>",
	\';inf'		:  "display: inline-flex;\<CR><++>",
	\
	\'include'	:  "@import \"<+++>\";\<CR><++>",
	\'@include'	:  "@import \"<+++>\";\<CR><++>",
	\'require'	:  "@import \"<+++>\";\<CR><++>",
	\'@require'	:  "@import \"<+++>\";\<CR><++>",
	\'import'	:  "@import \"<+++>\";\<CR><++>"
\}
let g:quicktex_less = g:quicktex_css

" JS {{{3
let g:quicktex_javascript = {
	\' '		:  "\<ESC>/<+.*+>\<CR>\"_c/+>/e\<CR>",
	\
	\';fun'		:  "function <+++>(<++>){\<CR><++>\<CR>}",
	\
\}
" Latex Normal {{{3
let g:quicktex_tex = {
	\' ' 		: "\<ESC>/<+.*+>\<CR>\"_c/+>/e\<CR>",
	\';b'		: "\\textbf{<+++>} <++>",
	\';e'		: "\\emph{<+++>} <++>",
	\'prf'		: "\\begin{proof}\<CR><+++>\<CR>\\end{proof}",
	\';m'		: "$<+++>$ <++>",
	\';M'		: "\\[ <+++> \\] <++>",
	\';ma'		: "$a$ ",
	\';mb'		: "$b$ ",
	\';mc'		: "$c$ ",
	\';md'		: "$d$ ",
	\';me'		: "$e$ ",
	\';mf'		: "$f$ ",
	\';mg'		: "$g$ ",
	\';mh'		: "$h$ ",
	\';mi'		: "$i$ ",
	\';mj'		: "$j$ ",
	\';mk'		: "$k$ ",
	\';ml'		: "$l$ ",
	\';mm'		: "$m$ ",
	\';mn'		: "$n$ ",
	\';mo'		: "$o$ ",
	\';mp'		: "$p$ ",
	\';mq'		: "$q$ ",
	\';mr'		: "$r$ ",
	\';ms'		: "$s$ ",
	\';mt'		: "$t$ ",
	\';mu'		: "$u$ ",
	\';mv'		: "$v$ ",
	\';mw'		: "$w$ ",
	\';mx'		: "$x$ ",
	\';my'		: "$y$ ",
	\';mz'		: "$z$ ",
	\';mA'		: "$A$ ",
	\';mB'		: "$B$ ",
	\';mC'		: "$C$ ",
	\';mD'		: "$D$ ",
	\';mE'		: "$E$ ",
	\';mF'		: "$F$ ",
	\';mG'		: "$G$ ",
	\';mH'		: "$H$ ",
	\';mI'		: "$I$ ",
	\';mJ'		: "$J$ ",
	\';mK'		: "$K$ ",
	\';mL'		: "$L$ ",
	\';mM'		: "$M$ ",
	\';mN'		: "$N$ ",
	\';mO'		: "$O$ ",
	\';mP'		: "$P$ ",
	\';mQ'		: "$Q$ ",
	\';mR'		: "$R$ ",
	\';mS'		: "$S$ ",
	\';mT'		: "$T$ ",
	\';mU'		: "$U$ ",
	\';mV'		: "$V$ ",
	\';mW'		: "$W$ ",
	\';mX'		: "$X$ ",
	\';mY'		: "$Y$ ",
	\';mZ'		: "$Z$ ",
\}

" Latex Maths {{{3
let g:quicktex_math = {
	\' '    : "\<ESC>/<+.*+>\<CR>\"_c/+>/e\<CR>",
	\';b'  : "\\mathbf{<+++>} <++>",
	\';B'  : "\\mathbb{<+++>} <++>",
	\'fr'   : '\mathcal{R} ',
	\'eq'   : '= ',
	\'set'  : '\{ <+++> \} <++>',
	\'frac' : '\frac{<+++>}{<++>} <++>',
	\'in'   : '\in ',
	\'bn'   : '\mathbb{N} ',
\}

" Markdown {{{3
let g:quicktex_markdown = {
	\' '		: "\<ESC>/<+.*+>\<CR>\"_c/+>/e\<CR>",
	\';b'		: "**<+++>** <++>",
	\';i'		:  "*<+++>* <++>",
	\';a'		:  "[<+++>](<+url+>) <++>",
\}
let g:quicktex_pandoc = g:quicktex_markdown
" PHP {{{3
let g:quicktex_php = {
	\' '		: "\<ESC>/<+.*+>\<CR>\"_c/+>/e\<CR>",
	\';ob'		: "ob_start();\<CR><+++>\<CR>ob_get_clean();",
	\';vd'		:  "var_dump(<+++>);",
	\';obvd'		: "ob_start();\<CR>var_dump(<+++>);\<CR>echo htmlspecialchars(ob_get_clean());",
	\';nl'		: "echo '<br />';",
\}


"}}}
"}}}


" Functions {{{1

function! NextMark()
	execute "normal! /(<.>)\<cr>zvda("
	execute "startinsert"
endfunction

function! NewHtml()
	read ~/Templates/html
	normal! ggdd
	setlocal filetype=html
	"call NextMark()
endfunction


function! NewLatex()
	read ~/Templates/latex
	normal! ggdd
	setlocal filetype=tex
endfunction

" Strip the newline from the end of a string
function! Chomp(str)
  return substitute(a:str, '\n$', '', '')
endfunction

" Find a file and pass it to cmd
function! DmenuOpen(cmd)
	let fname = Chomp(system("git ls-files | rofi -dmenu -i -l 20 -p " . a:cmd))
	if empty(fname)
		return
	endif
	execute a:cmd . " " . fname
endfunction

" Moves to open window, or focuses it
" https://www.reddit.com/r/vim/comments/8f80o3/awesome_way_to_navigate_windows_and_autocreate/
function! WinMove(key)
	let t:curwin = winnr()
	exec "wincmd ".a:key
	if (t:curwin == winnr())
		if (match(a:key,'[jk]'))
			wincmd v
		else
			wincmd s
		endif
		exec "wincmd ".a:key
	endif
endfunction

" Commands {{{1

"gets the wp salts
command! WpSalts :r! curl https://api.wordpress.org/secret-key/1.1/salt 2> /dev/null


" Mappings {{{1
" Move lines up/down/left/right using arrow keys
nnoremap <Down> ddp
nnoremap <Up> ddkP
nnoremap <Right> xp
nnoremap <Left> xhP

" Activate spelling
nnoremap <F7> :set spell!<cr>

" Disable Scroll wheel
noremap <ScrollWheelUp> <nop>
noremap <ScrollWheelDown> <nop>

nnoremap <c-o> :call DmenuOpen("e")<cr>

" make ctrl + hjkl move + create windows
nnoremap <C-h> :call WinMove('h')<cr>
nnoremap <C-j> :call WinMove('j')<cr>
nnoremap <C-k> :call WinMove('k')<cr>
nnoremap <C-l> :call WinMove('l')<cr>

" Make Ctrl C and Ctrl V work on system buffer
" if in visual or insert mode respectively
vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+pa

" Make Ctrl t open new tab
nnoremap <C-t> :tabnew<cr>

" map gV to select previously pasted
nnoremap <expr> gV    "`[".getregtype(v:register)[0]."`]"
"
" Set :w!! to save with sudo
cnoremap w!! w !sudo tee %

"Run current line as command
nnoremap <leader>q !!$SHELL <cr>

" Do Shebang line
" inoremap <C-y> <Esc>:sil exe ".!which <cWORD>" <bar> s/^/#!/ <bar> filetype detect<cr>YpDi
inoremap <C-y> <Esc>:sil s/^/#!\/usr\/bin\/env / <bar> filetype detect<cr>YpDi


" DO bullet points
inoremap <C-j> <esc>:exe "norm Ypf lDB\<C-a>"<cr>A

" edit vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" add new line without entering insert mode
nnoremap <CR> o<Esc>
nnoremap <S-Enter> O<Esc>

" Make jj in insert mode go to normal mode
inoremap jj <Esc>

" Set double space in insert mode to go to next mark and enter insert mode
"inoremap <leader><leader> <Esc>:call NextMark()<cr>

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
"Make web files fold on indent {{{2
augroup file_web
	autocmd!
	autocmd FileType html,xhtml,css,less,javascript,php setlocal foldmethod=indent foldenable
	autocmd FileType html,xhtml,css,less,javascript,php EmmetInstall
augroup END

" Add Html maps, Currently only pandoc conversion {{{2
augroup html
	autocmd!
	" Run current line through pandoc.
	" Convert from markdown to html
	autocmd FileType html nnoremap <localleader>p :.!pandoc -t html -f markdown-auto_identifiers --wrap=preserve<cr>
	"convert from html to markdown
	autocmd FileType html nnoremap <localleader>P :.!pandoc -t markdown -f html --wrap=preserve --atx-headers<cr>

	"Run current selection through pandoc
	" Convert from markdown to html
	autocmd FileType html vnoremap <localleader>p :!pandoc -t html -f markdown-auto_identifiers --wrap=preserve<cr>
	"convert from html to markdown
	autocmd FileType html vnoremap <localleader>P :!pandoc -t markdown -f html --wrap=preserve --atx-headers<cr>
augroup END

" Add latex maps, Currently only pandoc conversion {{{2
augroup latex
	autocmd!
	" Run current line through pandoc.  
	" Convert from markdown to latex
	autocmd FileType tex,latex nnoremap <localleader>p :.!pandoc -t latex -f markdown-auto_identifiers --wrap=preserve<cr>
	"convert from latex to markdown
	autocmd FileType tex,latex vnoremap <localleader>P :.!pandoc -t markdown -f latex --wrap=preserve --atx-headers<cr>

	"Run current selection through pandoc
	" Convert from markdown to latex
	autocmd FileType tex,latex vnoremap <localleader>p :!pandoc -t latex -f markdown-auto_identifiers --wrap=preserve<cr>
	"convert from latex to markdown
	autocmd FileType tex,latex vnoremap <localleader>P :!pandoc -t markdown -f latex --wrap=preserve --atx-headers<cr>
augroup END

" Make vim fold using markers {{{2
augroup file_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker foldenable
augroup END

" Make json fold using syntax {{{2
augroup file_json
	autocmd!
	autocmd FileType json setlocal foldmethod=syntax foldenable
augroup END

""set es6 files to javascript {{{2
augroup detectES6
	autocmd!
	autocmd BufNew,BufNewFile,BufRead *.es6 :setlocal filetype=javascript
augroup END

""set htaccess variations to apache {{{2
augroup detectHtaccess
	autocmd!
	autocmd BufNew,BufNewFile,BufRead *.htaccess,*.localhtaccess,*.livehtaccess :setlocal filetype=apache
augroup END



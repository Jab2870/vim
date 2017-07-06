" File:		gitignore.vim
" Description: 	.gitignore file detection for vim
" Author: 		jonathan <jonathan@lunarweb.co.uk>
" URL: 			jonathanh.co.uk

autocmd BufNewFile,BufRead .gitignore,global_gitignore setlocal filetype=gitignore


augroup filedetect
au BufNewFile,BufRead *.tex,*.html,*.php setlocal spell spelllang=fr
"au BufNewFile,BufRead *.c,*.cpp,*.h setlocal spell spelllang=en
au BufNewFile,BufRead *.latex,*.sty,*.dtx,*.ltx,*.bbl,*.cls setf tex
au BufNewFile,BufRead *.tex set softtabstop=2 nosmartindent tabstop=2
au BufNewFile,BufRead *alot.* setf mail
au BufNewFile,BufRead *.pl setf prolog
au BufNewFile,BufRead,BufEnter *.md set syntax=markdown
au BufNewFile,BufRead,BufEnter *.f90 set textwidth=80
au bufNewFile *.py 0r ~/.vim/templates/python.py
au BufEnter *.h   set syntax=cpp.doxygen
au BufEnter hg-editor* set spelllang=en
au BufNewFile *.tex 0r ~/.vim/templates/latex_article.tex
au FileType text,mail :setlocal spell spelllang=fr
au FileType mail :silent! %s/^\([>|]\s\?\)\+/\=substitute(submatch(0), '\s', '', 'g').' '
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python inoremap <Nul> <C-x><C-o>
"au BufNewFile,BufRead *.t set filetype=cram
augroup END

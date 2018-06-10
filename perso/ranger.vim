"|    Ranger as Vim file manager                                           <<<
"|----------------------------------------------------------------------------
" http://ornicar.github.com/2011/02/12/ranger-as-vim-file-manager.html
function! Ranger()
  "let tmpfile = '/tmp/chosen'
  "silent !ranger %:h --choosefile=/tmp/chosen
  let tmpfile = substitute(system('mktemp -u'), '\n', '', '')
  silent exec '!ranger --choosefile='.tmpfile
  if filereadable(tmpfile)
    exec 'edit '. system('cat '.tmpfile)
    call delete(tmpfile)
  endif
  redraw!
endfunction
noremap <silent> <Esc>e :call Ranger()<CR>

"Text alignement
    "Indentation
vnoremap < <gv
vnoremap > >gv

vnoremap <C-c> "+y

"Quit insert mode
inoremap q. <Esc>
vnoremap q. <Esc>
noremap q. <Esc>
imap yy <C-o>

"Lazy scrolling
nnoremap <Backspace> <PageUp>
nnoremap <Space> <PageDown>
nnoremap <Return> zz

map <F2> :TagbarToggle<CR>

"If I type :Wq or :WQ, please, just do it !
command! W :w %
command! Wq :wq %
command! WQ :wq %
command! Wroot :w !sudo tee %

command GREP :execute 'vimgrep '.expand('<cword>').' '.expand('%') | :copen | :cc

" -- ctags --
" map <ctrl>+F12 to generate ctags for current folder:
map <F12> :!ctags -R --c++-kinds=+p --fields=+ialS --extra=+q .<CR><CR>

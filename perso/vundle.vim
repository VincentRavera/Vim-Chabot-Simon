set nocompatible               " be iMproved
filetype off             " required!

let g:vundle_default_git_prot = 'git' "XXX Doesn’t work
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()



" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Powerline
Bundle 'Lokaltog/vim-powerline'

" Search results counter
Bundle 'IndexedSearch'

" Speedating
Bundle 'tpope/vim-speeddating'

"Tabularize
Bundle 'godlygeek/tabular'

Bundle 'scrooloose/syntastic'

Bundle 'Tagbar'

"Bundle 'freefem.vim'

Bundle 'vim-scripts/Python-mode-klen'

"Bundle 'tpope/vim-surround'

Bundle 'The-NERD-tree'

"Eclim bundle works only with eclipse configured
"Bundle 'eclim'

filetype plugin indent on     " required!

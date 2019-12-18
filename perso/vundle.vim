set nocompatible               " be iMproved
filetype off             " required!

"let g:vundle_default_git_prot = 'git' "XXX Doesn’t work
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()



" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"-----Tools-------
" Powerline
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
" Deprecated
" Bundle 'Lokaltog/vim-powerline'

" Search results counter
Bundle 'IndexedSearch'

" Speedating
"Bundle 'tpope/vim-speeddating'

" Tabularize
Bundle 'godlygeek/tabular'

" Indentline
Bundle 'yggdroot/indentline'
" put ¦ for space indent not tab indent.
" set this expandtab tabstop=2 softtabstop=2 shiftwidth=2 autoindent
" TODO: configure Indent style per file extension precisely


" Tagbar
Bundle 'Tagbar'
" Nice overview of the buffer

"---------------------
"-------HIGHLIGT------
"---------------------
" Syntax checker-highlight
Bundle 'scrooloose/syntastic'

" Notes & markdown
Bundle 'vimwiki/vimwiki'

" TypeScipt
Bundle 'leafgarland/typescript-vim'

" freefem
"Bundle 'freefem.vim'
"---------------------


"---------------------
"-----Completion------
"---------------------
"Bundle 'Valloric/YouCompleteMe'

if has('nvim')
	" Completion on Neo-Vim
	Bundle 'roxma/nvim-yarp'
	Bundle 'ncm2/ncm2'
	" Python
	"python3 -m pip install --user pynvim neovim <- Required
	Bundle 'ncm2/ncm2-jedi'
	" Words in buffers (Ctrl+n)
	Bundle 'ncm2/ncm2-bufword'
	" Paths (Ctrl+x + Ctrl+f)
	Bundle 'ncm2/ncm2-path'
	autocmd BufEnter * call ncm2#enable_for_buffer()
	set completeopt=noinsert,menuone,noselect
else
	" Completion on Vim
	" Python
	if has('python3')
		Bundle 'vim-scripts/Python-mode-klen'
	else
		Bundle 'davidhalter/jedi-vim'
	endif
endif

" Java
" Warning Performences issues at startup
"Bundle 'eclim'


"Bundle 'tpope/vim-surround'
"---------------------

" Vexplore alternative
Bundle 'scrooloose/nerdtree'
Bundle 'Xuyuanp/nerdtree-git-plugin'

" Git
"Bundle 'tpope/vim-fugitive'  "<- Confilct Beetween fugitive & addon of NERD TREE



filetype plugin indent on     " required!

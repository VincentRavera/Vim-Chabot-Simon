
		""" OmniCpp
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 0 " autocomplete with ::
let OmniCpp_SelectFirstItem = 0 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 2 " show function prototype (i.e. parameters) in popup window

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview

"let g:syntastic_python_checker = 'pylint'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = ['flakes8']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_error_symbol = "✗"
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'


"""" Vim powerline
let g:Powerline_symbols = 'unicode'

""" Tagbar
" toggle Tagbar display
map <F4> :TagbarToggle<CR>
map <C-F4> :TagbarToggle<CR>
" autofocus on Tagbar open
let g:tagbar_autofocus = 1


"""cltrp
nnoremap ,p :CtrlP<CR>
nnoremap ,l :CtrlPLine<CR>
nnoremap ,b :CtrlPBuffer<CR>



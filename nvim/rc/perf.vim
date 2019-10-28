" Faster default regex engine?
" set re=1

" set number
" set nocursorline
" set norelativenumber
" set lazyredraw

" Turn off stuff that slows down rendering while typing
" au InsertEnter * :set norelativenumber
" au InsertEnter * :set nocursorline
" au InsertEnter * :set lazyredraw

" Turn it back on in normal mode (when it's actually useful)
" au InsertLeave * :set relativenumber
" au InsertLeave * :set cursorline
" au InsertLeave * :set nolazyredraw

set number
set relativenumber

function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set number
    set relativenumber
  endif
endfunc

nnoremap <C-N> :call NumberToggle()<CR>

au FocusLost * :set number
au FocusLost * :set norelativenumber
au FocusGained * :set relativenumber
au WinLeave * :set number
au WinLeave * :set norelativenumber
au WinEnter * :set relativenumber

let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

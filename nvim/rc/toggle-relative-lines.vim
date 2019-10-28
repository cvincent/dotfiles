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

let blacklist = ['denite', 'denite-filter']
au FocusLost * if index(blacklist, &ft) < 0 | set number
au FocusLost * if index(blacklist, &ft) < 0 | set norelativenumber
au FocusGained * if index(blacklist, &ft) < 0 | set relativenumber
au WinLeave * if index(blacklist, &ft) < 0 | set number
au WinLeave * if index(blacklist, &ft) < 0 | set norelativenumber
au WinEnter * if index(blacklist, &ft) < 0 | set relativenumber

let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

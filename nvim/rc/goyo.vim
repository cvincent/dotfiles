function! s:goyo_enter()
  au! FocusLost *
  au! FocusGained *
  au! WinLeave *
  au! WinEnter *
  au! InsertLeave *
  set nocursorline
  set nonumber
  set norelativenumber
  set scrolloff=999
  set spell
endfunction

autocmd User GoyoEnter nested call <SID>goyo_enter()
autocmd FileType mail Goyo
autocmd FileType mail nnoremap <Leader>q :qa<CR>

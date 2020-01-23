function! s:goyo_enter_all()
  au! FocusLost *
  au! FocusGained *
  au! WinLeave *
  au! WinEnter *
  au! InsertLeave *
  " set nocursorline
  set nonumber
  set norelativenumber
  set scrolloff=999
  set spell
endfunction

function! s:goyo_enter_nested()
  set textwidth=0
  set wrapmargin=0
  set wrap
  set linebreak
  nmap <silent> j gj
  nmap <silent> k gk
  nmap <silent> 0 g0
  nmap <silent> $ g$
endfunction

autocmd User GoyoEnter call <SID>goyo_enter_all()
autocmd User GoyoEnter nested call <SID>goyo_enter_nested()
autocmd FileType mail Goyo
autocmd FileType mail nnoremap <Leader>q :qa<CR>

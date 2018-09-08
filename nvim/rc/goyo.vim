function! s:goyo_enter()
  set relativenumber
  set scrolloff=999
endfunction

autocmd User GoyoEnter nested call <SID>goyo_enter()
autocmd FileType mail Goyo
autocmd FileType mail nnoremap <Leader>q :qa<CR>

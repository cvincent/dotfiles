function! PushToCurrentBranch()
  " let branch = fugitive#statusline()
  " let branch = substitute(branch, '\c\v\[?Git\(([a-z0-9\-_\./:]+)\)\]?', $BRANCH.' \1', 'g')
  let branch = substitute(substitute(fugitive#statusline(), "[Git(", "", "g"), ")]", "", "g")
  exe ":Git push origin " . branch
endfunction

function! PullFromCurrentBranch()
  " let branch = fugitive#statusline()
  " let branch = substitute(branch, '\c\v\[?Git\(([a-z0-9\-_\./:]+)\)\]?', $BRANCH.' \1', 'g')
  let branch = substitute(substitute(fugitive#statusline(), "[Git(", "", "g"), ")]", "", "g")
  exe ":Git pull origin " . branch
endfunction

"\gs to :Gstatus and move cursor to first file
"Apparently the <C-n> fires before the status window appears, so has no
"effect; try to find some fix for this
silent! nnoremap <Leader>gs :Gstatus<Enter><C-n>

silent! nnoremap <Leader>gc :Git checkout 
silent! nnoremap <Leader>gm :Git merge 
silent! nnoremap <Leader>gpl :call PullFromCurrentBranch()<CR>
silent! nnoremap <Leader>gpu :call PushToCurrentBranch()<CR>
silent! nnoremap <Leader>gb :Git checkout -b 

au FileType gitcommit nmap <buffer> <Leader>w :wq<CR>

" Opt out of running in NeoVim terminal emulator
let g:fugitive_force_bang_command = 1

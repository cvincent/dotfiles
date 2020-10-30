set cursorline
set pumblend=10
set winblend=10

hi! Normal guibg=none guibg=none
hi! NonText guibg=none guibg=none
hi! rubyDefine guibg=none

" exe 'hi! CursorLine gui=none guifg=none guibg=' . g:terminal_color_0
exe 'hi! MatchParen gui=underline guibg=none'
" exe 'hi! Pmenu guibg=' . g:terminal_color_0
" exe 'hi! PmenuSbar guibg=' . g:terminal_color_0
" exe 'hi! PmenuThumb guibg=' . g:terminal_color_15
" exe 'hi! TabLineFill gui=none guibg=' . g:terminal_color_0

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

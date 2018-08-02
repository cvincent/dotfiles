let g:tslime_always_current_session = 1

function! Die()
  call ToTmux("say goodbye; tkill\n")
  exec "qa"
endfunction

command! Die call Die()

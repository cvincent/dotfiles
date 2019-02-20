" Always maintain equal splits
au VimResized * wincmd =

" Wrap split navigation
function! s:GotoNextWindow( direction, count )
  let l:prevWinNr = winnr()
  execute a:count . 'wincmd' a:direction
  return winnr() != l:prevWinNr
endfunction

function! s:JumpWithWrap( direction, opposite )
  if ! s:GotoNextWindow(a:direction, v:count1)
    call s:GotoNextWindow(a:opposite, 999)
  endif
endfunction

nmap <silent> <C-w>h :<C-u>call <SID>JumpWithWrap('h', 'l')<CR>
nmap <silent> <C-w>j :<C-u>call <SID>JumpWithWrap('j', 'k')<CR>
nmap <silent> <C-w>k :<C-u>call <SID>JumpWithWrap('k', 'j')<CR>
nmap <silent> <C-w>l :<C-u>call <SID>JumpWithWrap('l', 'h')<CR>

" Easy window switching
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-=> <C-w>=

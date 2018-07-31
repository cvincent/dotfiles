nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <C-T> :pop<CR>

" Reload all files, for example after switching Git branches
nmap <F7> :checkt<CR>

" Default Ctrl-C behavior isn't quite the same as Esc; fix that
inoremap <C-C> <Esc>

" Option-Del support for command-line mode
cmap <M-C-H> <C-W>

" File stuff
nmap <Leader>fm :Move 
nmap <Leader>ffm :Move <C-R>=expand('%')<CR>
nmap <Leader>fu :Unlink<CR>

" Keep windows equal
set equalalways

" Fast ex
nnoremap <return> :
vnoremap <return> :

" Leader-fp for Ag
map <leader>fp :Ag!<space>

" Leader-fP for Ag with current word
nmap <leader>fP :execute 'Ag ' . expand('<cword>')<CR>

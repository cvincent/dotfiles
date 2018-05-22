" Enter closes menu *and* inserts new line
" inoremap <expr> <CR> pumvisible() ? "\<c-y>\<cr>" : "\<CR>"

" Tab selection
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:cm_refresh_length = 2

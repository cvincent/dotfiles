autocmd BufEnter * call ncm2#enable_for_buffer()
" autocmd TextChangedI <buffer> call ncm2#auto_trigger()
set completeopt=noinsert,menuone,noselect
" set lazyredraw
let ncm2#popup_delay = 250

" Suppress annoying match messages
set shortmess+=c

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" LanguageClients
" Not using for now; Solargraph needs work
" let g:LanguageClient_serverCommands = { 'ruby': ['tcp://localhost:7658'] }

let g:deoplete#enable_at_startup = 1
let g:deoplete#complete_method = 'omnifunc'
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_complete_start_length = 3
let g:deoplete#max_list = 10
let g:deoplete#auto_complete_delay = 1

call deoplete#enable()

imap <silent><expr><Tab> pumvisible() ? "\<C-n>"
      \ : (<SID>is_whitespace() ? "\<Tab>"
      \ : deoplete#manual_complete())

smap <silent><expr><Tab> pumvisible() ? "\<C-n>"
      \ : (<SID>is_whitespace() ? "\<Tab>"
      \ : deoplete#manual_complete())

inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:is_whitespace()
  let col = col('.') - 1
  return ! col || getline('.')[col - 1] =~? '\s'
endfunction

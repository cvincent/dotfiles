let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1

let g:ale_fixers = {'ruby': ['rubocop']}

nmap <Leader>af :ALEFix<CR>
nmap <silent> <Leader>an <Plug>(ale_next_wrap)
nmap <silent> <Leader>ap <Plug>(ale_previous_wrap)

hi! SignColumn ctermbg=black

let g:cur_status_bg = ''


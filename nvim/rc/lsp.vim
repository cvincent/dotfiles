set signcolumn=yes
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

let g:lsp_signs_error =   { 'text': 'xx' }
let g:lsp_signs_warning = { 'text': '!!' }
let g:lsp_signs_hint =    { 'text': '**' }
let g:lsp_signs_information = { 'text': '??' }

" let g:lsp_log_verbose = 1
" let g:lsp_log_file = expand('~/vim-lsp.log')

if executable('solargraph')
  au User lsp_setup call lsp#register_server({
      \ 'name': 'solargraph',
      \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
      \ 'initialization_options': {"diagnostics": "true"},
      \ 'whitelist': ['ruby'],
      \ })
endif

if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
    \ 'name': 'typescript-language-server',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
    \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
    \ 'whitelist': ['typescript'],
    \ })

  au User lsp_setup call lsp#register_server({
    \ 'name': 'typescript-language-server-js',
    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
    \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'jsconfig.json'))},
    \ 'whitelist': ['javascript', 'javascript.jsx'],
    \ })
endif

if executable('css-languageserver')
    au User lsp_setup call lsp#register_server({
      \ 'name': 'css-languageserver',
      \ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
      \ 'whitelist': ['css', 'less', 'scss'],
      \ })
endif

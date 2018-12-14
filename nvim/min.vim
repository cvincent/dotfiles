scriptencoding utf-8

filetype off
call plug#begin('~/.config/nvim/plugged')
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-vim-lsp'
call plug#end()
filetype plugin indent on

set completeopt=noinsert,menuone,noselect
autocmd BufEnter * call ncm2#enable_for_buffer()
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

if executable('solargraph')
  au User lsp_setup call lsp#register_server({
      \ 'name': 'solargraph',
      \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
      \ 'initialization_options': {"diagnostics": "true"},
      \ 'whitelist': ['ruby'],
      \ })
endif

let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/vim-lsp.log')

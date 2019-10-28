call denite#custom#var('file/rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/*', '*.pyc', 'node_modules/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/', '*.png'])

nnoremap <C-P> :Denite file/rec -start-filter<CR>
nnoremap <C-G> :Denite grep<CR>

let s:denite_options = {'default' : {
      \ 'auto_resize': 1,
      \ 'prompt': 'λ:',
      \ 'split': 'floating',
      \ 'winminheight': '10',
      \ 'highlight_mode_insert': 'Visual',
      \ 'highlight_mode_normal': 'Visual',
      \ 'prompt_highlight': 'Function',
      \ 'highlight_matched_char': 'Function',
      \ 'highlight_matched_range': 'Normal'
      \ }}

" Loop through denite options and enable them
function! s:profile(opts) abort
  for l:fname in keys(a:opts)
    for l:dopt in keys(a:opts[l:fname])
      call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
    endfor
  endfor
endfunction

call s:profile(s:denite_options)

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc> denite#do_map('quit')
  nnoremap <silent><buffer><expr> <C-C> denite#do_map('quit')
  nnoremap <silent><buffer><expr> i denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space> denite#do_map('toggle_select').'j'
  setl nonumber
  setl norelativenumber
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer><expr> <Esc> denite#do_map('quit')
  imap <silent><buffer><expr> <C-C> denite#do_map('quit')
  setl nonumber
  setl norelativenumber
endfunction

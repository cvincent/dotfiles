let g:fzf_layout = { 'window': 'call FloatingFZF()' }

let g:fzf_colors = {
      \ 'hl':      ['bg', 'Search'],
      \ 'hl+':     ['bg', 'Search'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Exception'] }

let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit' }

nnoremap <C-P> :GFiles<cr>
nnoremap <leader>gc :call <sid>fzf_checkout()<cr>

au FileType fzf set nonumber norelativenumber
au FileType fzf tnoremap <buffer> <Esc> <C-C>
au FileType fzf nnoremap <buffer> <C-P> <Up>
au FileType fzf nnoremap <buffer> <C-N> <Down>

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')
  call setbufvar(buf, '&number', 0)
  call setbufvar(buf, '&relativenumber', 0)

  let height = float2nr(&lines / 3)
  let row = float2nr(&lines / 6 * 2)
  let width = float2nr(&columns / 2)
  let col = float2nr(&columns / 4)

  let opts = {
        \ 'relative': 'editor',
        \ 'row': row,
        \ 'col': col,
        \ 'width': width,
        \ 'height': height
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction

function! s:fzf_checkout()
  call fzf#run(fzf#wrap({
        \ 'source': "git branch | awk '{$1=$1};1'",
        \ 'sink': 'Git checkout',
        \ }))
endfunction

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

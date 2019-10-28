let g:airline_theme='walgui'
exe 'hi! airline_error_bold gui=none guibg=' . g:terminal_color_1

let g:airline_highlighting_cache = 1
let g:airline_powerline_fonts = 0
let g:airline_inactive_alt_sep = 1
let g:airline_skip_empty_sections = 1

let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = '%l:%c'

let g:airline_mode_map = {
      \ '__' : '-',
      \ 'c'  : 'C',
      \ 'i'  : 'I',
      \ 'ic' : 'I',
      \ 'ix' : 'I',
      \ 'n'  : 'N',
      \ 'ni' : 'N',
      \ 'no' : 'N',
      \ 'R'  : 'R',
      \ 'Rv' : 'R',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ 't'  : 'T',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ }

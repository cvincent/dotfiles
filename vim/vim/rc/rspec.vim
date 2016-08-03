let g:rspec_runner = "vim-piper"
let g:rspec_command = " bin/spring rspec {spec}"
map <Leader>T :call RunAllSpecs()<CR>
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>s :call RunLastSpec()<CR>

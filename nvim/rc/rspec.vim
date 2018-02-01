let g:rspec_command = 'call Send_to_Tmux("rspec {spec}; say specs completed\n")'
map <Leader>T :call RunAllSpecs()<CR>
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>s :call RunLastSpec()<CR>

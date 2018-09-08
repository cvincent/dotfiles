let g:rspec_command = 'call ToTmux("rspec {spec}; say ''specs completed''")'

map <Leader>T :call RunAllSpecs()<CR>
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>s :call RunLastSpec()<CR>

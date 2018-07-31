" Highlight ruby operators
let ruby_operators=1

" Highlight jbuilder files
au BufNewFile,BufRead *.jbuilder set ft=ruby
au BufNewFile,BufRead *.jpbuilder set ft=ruby

" Preferrable indentation for common @var ||= begin/if/etc
let g:ruby_indent_assignment_style = 'variable'


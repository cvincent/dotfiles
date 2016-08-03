autocmd BufRead,BufNewFile *.es6 setfiletype javascript
au FileType javascript call RagtagInit()

" Breaks JSX indenting/highlighting
" let g:xml_syntax_folding = 0

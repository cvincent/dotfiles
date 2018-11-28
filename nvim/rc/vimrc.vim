if !exists("*ReloadVimRc")
  function ReloadVimRc()
    source ~/.config/nvim/init.vim
    " if has("gui_running")
    "   source ~/.gvimrc
    " endif
    redraw!
  endfunction
endif

" Easily edit vimrc and re-source
noremap <Leader>v :tabedit ~/.config/nvim/init.vim<CR>
noremap <Leader>rv :tabedit ~/dotfiles/nvim/rc<CR>
" autocmd! BufWritePost init.vim call ReloadVimRc()

" Reload just the rc folder
if !exists("*ReloadVimRc")
  function ReloadVimRcFolder()
    for f in split(glob('~/.config/nvim/rc/*.vim'), '\n')
      exe 'source' f
    endfor
    redraw!
  endfunction
endif

nmap <Leader>vr call ReloadVimRcFolder()<CR>

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
noremap <Leader>rv :tabedit ~/.vim/rc<CR>
autocmd! BufWritePost init.vim call ReloadVimRc()

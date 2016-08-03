if !exists("*ReloadVimRc")
  function ReloadVimRc()
    source ~/.vimrc
    if has("gui_running")
      source ~/.gvimrc
    endif
    redraw!
  endfunction
endif

" Easily edit vimrc and re-source
noremap <Leader>v :tabedit ~/.vimrc<CR>
noremap <Leader>gv :tabedit ~/.gvimrc<CR>
noremap <Leader>rv :tabedit ~/.vim/rc<CR>
autocmd! BufWritePost .vimrc call ReloadVimRc()

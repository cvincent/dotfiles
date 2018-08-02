function ToTmux(str)
  call Send_keys_to_Tmux("c-c")
  call Send_to_Tmux(a:str)
  call Send_keys_to_Tmux("Enter")
endfunction

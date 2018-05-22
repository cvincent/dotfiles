" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}\ %{fugitive#statusline()}%=%-16(\ %l,%c-%v\ %)%P
set statusline=%{fnamemodify(getcwd(),':t')}
set statusline+=\ →\ 
set statusline+=%f
set statusline+=%m
set statusline+=\ 
set statusline+=(%l,\ %c)
set statusline+=%=
set statusline+=%{gutentags#statusline('[',']')}
set statusline+=\ 
set statusline+=%{fugitive#statusline()}

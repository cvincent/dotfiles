lua <<EOF
require'nvim-treesitter.configs'.setup {
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
    disable = {},  -- optional, list of language that will be disabled
  },
}
EOF

" exe 'hi! MatchParen gui=underline guibg=none'

augroup matchup_matchparen_highlight
  autocmd!
  autocmd ColorScheme * hi! MatchParen gui=underline guibg=none guifg=none
augroup END

" wal.vim -- Vim color scheme.
" Author:       Chris Vincent
" Webpage:      https://github.com/cvincent/wal-gui
" Description:  A colorscheme that uses your terminal colors, made to work with 'wal'.

hi clear
set background=dark
set termguicolors

if exists('syntax_on')
  syntax reset
endif

" Colorscheme name
let g:colors_name = 'walgui'

let g:terminal_color_0 =  "{color0}"
let g:terminal_color_1 =  "{color1}"
let g:terminal_color_2 =  "{color2}"
let g:terminal_color_3 =  "{color3}"
let g:terminal_color_4 =  "{color4}"
let g:terminal_color_5 =  "{color5}"
let g:terminal_color_6 =  "{color6}"
let g:terminal_color_7 =  "{color7}"
let g:terminal_color_8 =  "{color8}"
let g:terminal_color_9 =  "{color9}"
let g:terminal_color_10 = "{color10}"
let g:terminal_color_11 = "{color11}"
let g:terminal_color_12 = "{color12}"
let g:terminal_color_13 = "{color13}"
let g:terminal_color_14 = "{color14}"
let g:terminal_color_15 = "{color15}"
let g:terminal_color_background = "{background}"
let g:terminal_color_foreground = "{foreground}"

let g:terminal_ansi_colors = [
      \ "{color0}",
      \ "{color1}",
      \ "{color2}",
      \ "{color3}",
      \ "{color4}",
      \ "{color5}",
      \ "{color6}",
      \ "{color7}",
      \ "{color8}",
      \ "{color9}",
      \ "{color10}",
      \ "{color11}",
      \ "{color12}",
      \ "{color13}",
      \ "{color14}",
      \ "{color15}",
      \ ]


hi Normal guibg=none guifg={color7}
hi NonText guibg=none guifg={color0}
hi Comment guibg=none guifg={color8}
hi Constant guibg=none guifg={color3}
hi Error guibg={color1} guifg={color7}
hi Identifier guibg=none guifg={color1} gui=bold
hi Ignore guibg={color8} guifg={color0}
hi PreProc guibg=none guifg={color3}
hi Special guibg=none guifg={color6}
hi Statement guibg=none guifg={color1}
hi String guibg=none guifg={color2}
hi Number guibg=none guifg={color3}
hi Todo guibg={color2} guifg={color0}
hi Type guibg=none guifg={color3}
hi Underlined guibg=none guifg={color1} gui=underline
hi StatusLine guibg={color7} guifg={color0}
hi StatusLineNC guibg={color8} guifg={color0}
hi TabLine guibg=none guifg={color8}
hi TabLineFill guibg=none guifg={color8}
hi TabLineSel guibg={color4} guifg={color0}
hi TermCursorNC guibg={color3} guifg={color0}
hi VertSplit guibg={color8} guifg={color0}
hi Title guibg=none guifg={color4}
hi CursorLine guibg={color2} guifg={color0}
hi LineNr guibg=none guifg={color8}
hi CursorLineNr guibg=none guifg={color8}
hi helpLeadBlank guibg=none guifg={color7}
hi helpNormal guibg=none guifg={color7}
hi Visual guibg={color0} guifg={color15} gui=reverse term=reverse
hi VisualNOS guibg=none guifg={color1}
hi Pmenu guibg={color8} guifg={color7}
hi PmenuSbar guibg={color6} guifg={color7}
hi PmenuSel guibg={color4} guifg={color0}
hi PmenuThumb guibg={color8} guifg={color8}
hi FoldColumn guibg=none guifg={color7}
hi Folded guibg=none guifg={color8}
hi WildMenu guibg={color2} guifg={color0}
hi SpecialKey guibg=none guifg={color8}
hi DiffAdd guibg=none guifg={color2}
hi DiffChange guibg=none guifg={color8}
hi DiffDelete guibg=none guifg={color1}
hi DiffText guibg=none guifg={color4}
hi IncSearch guibg={color3} guifg={color0}
hi Search guibg={color3} guifg={color0}
hi Directory guibg=none guifg={color4}
hi MatchParen guibg={color1} guifg={color8}
hi ColorColumn guibg={color4} guifg={color0}
hi signColumn guibg=none guifg={color4}
hi ErrorMsg guibg=none guifg={color8}
hi ModeMsg guibg=none guifg={color2}
hi MoreMsg guibg=none guifg={color2}
hi Question guibg=none guifg={color4}
hi WarningMsg guibg={color1} guifg={color0}
hi Cursor guibg=none guifg={color8}
hi Structure guibg=none guifg={color5}
hi CursorColumn guibg={color8} guifg={color7}
hi ModeMsg guibg=none guifg={color7}
hi SpellBad guibg=none guifg={color1} gui=underline
hi SpellCap guibg=none guifg={color4} gui=underline
hi SpellLocal guibg=none guifg={color5} gui=underline
hi SpellRare guibg=none guifg={color6} gui=underline
hi Boolean guibg=none guifg={color5}
hi Character guibg=none guifg={color1}
hi Conditional guibg=none guifg={color5}
hi Define guibg=none guifg={color5}
hi Delimiter guibg=none guifg={color5}
hi Float guibg=none guifg={color5}
hi Include guibg=none guifg={color4}
hi Keyword guibg=none guifg={color5}
hi Label guibg=none guifg={color3}
hi Operator guibg=none guifg={color7}
hi Repeat guibg=none guifg={color3}
hi SpecialChar guibg=none guifg={color5}
hi Tag guibg=none guifg={color3}
hi Typedef guibg=none guifg={color3}
hi vimUserCommand guibg=none guifg={color1} gui=bold
    hi link vimMap vimUserCommand
    hi link vimLet vimUserCommand
    hi link vimCommand vimUserCommand
    hi link vimFTCmd vimUserCommand
    hi link vimAutoCmd vimUserCommand
    hi link vimNotFunc vimUserCommand
hi vimNotation guibg=none guifg={color4}
hi vimMapModKey guibg=none guifg={color4}
hi vimBracket guibg=none guifg={color7}
hi vimCommentString guibg=none guifg={color8}
hi htmlLink guibg=none guifg={color1} gui=underline
hi htmlBold guibg=none guifg={color3} gui=bold
hi htmlItalic guibg=none guifg={color5}
hi htmlEndTag guibg=none guifg={color7}
hi htmlTag guibg=none guifg={color7}
hi htmlTagName guibg=none guifg={color1} gui=bold
hi htmlH1 guibg=none guifg={color7}
    hi link htmlH2 htmlH1
    hi link htmlH3 htmlH1
    hi link htmlH4 htmlH1
    hi link htmlH5 htmlH1
    hi link htmlH6 htmlH1
hi cssMultiColumnAttr guibg=none guifg={color2}
    hi link cssFontAttr cssMultiColumnAttr
    hi link cssFlexibleBoxAttr cssMultiColumnAttr
hi cssBraces guibg=none guifg={color7}
    hi link cssAttrComma cssBraces
hi cssValueLength guibg=none guifg={color7}
hi cssUnitDecorators guibg=none guifg={color7}
hi cssValueNumber guibg=none guifg={color7}
    hi link cssValueLength cssValueNumber
hi cssNoise guibg=none guifg={color8}
hi cssTagName guibg=none guifg={color1}
hi cssFunctionName guibg=none guifg={color4}
hi scssSelectorChar guibg=none guifg={color7}
hi scssAttribute guibg=none guifg={color7}
    hi link scssDefinition cssNoise
hi sassidChar guibg=none guifg={color1}
hi sassClassChar guibg=none guifg={color5}
hi sassInclude guibg=none guifg={color5}
hi sassMixing guibg=none guifg={color5}
hi sassMixinName guibg=none guifg={color4}
hi javaScript guibg=none guifg={color7}
hi javaScriptBraces guibg=none guifg={color7}
hi javaScriptNumber guibg=none guifg={color5}
hi markdownH1 guibg=none guifg={color7}
    hi link markdownH2 markdownH1
    hi link markdownH3 markdownH1
    hi link markdownH4 markdownH1
    hi link markdownH5 markdownH1
    hi link markdownH6 markdownH1
hi markdownAutomaticLink guibg=none guifg={color2} gui=underline
    hi link markdownUrl markdownAutomaticLink
hi markdownError guibg=none guifg={color7}
hi markdownCode guibg=none guifg={color3}
hi markdownCodeBlock guibg=none guifg={color3}
hi markdownCodeDelimiter guibg=none guifg={color5}
hi markdownItalic gui=Italic
hi markdownBold gui=bold
hi xdefaultsValue guibg=none guifg={color7}
hi rubyInclude guibg=none guifg={color4}
hi rubyDefine guibg=none guifg={color5}
hi rubyFunction guibg=none guifg={color4}
hi rubyStringDelimiter guibg=none guifg={color2}
hi rubyInteger guibg=none guifg={color3}
hi rubyAttribute guibg=none guifg={color4}
hi rubyConstant guibg=none guifg={color3}
hi rubyInterpolation guibg=none guifg={color2}
hi rubyInterpolationDelimiter guibg=none guifg={color3}
hi rubyRegexp guibg=none guifg={color6}
hi rubySymbol guibg=none guifg={color2}
hi rubyTodo guibg=none guifg={color8}
hi rubyRegexpAnchor guibg=none guifg={color7}
    hi link rubyRegexpQuantifier rubyRegexpAnchor
hi pythonOperator guibg=none guifg={color5}
hi pythonFunction guibg=none guifg={color4}
hi pythonRepeat guibg=none guifg={color5}
hi pythonStatement guibg=none guifg={color1} gui=bold
hi pythonBuiltIn guibg=none guifg={color4}
hi phpMemberSelector guibg=none guifg={color7}
hi phpComparison guibg=none guifg={color7}
hi phpParent guibg=none guifg={color7}
hi cOperator guibg=none guifg={color6}
hi cPreCondit guibg=none guifg={color5}
hi SignifySignAdd guibg=none guifg={color2}
hi SignifySignChange guibg=none guifg={color4}
hi SignifySignDelete guibg=none guifg={color1}
hi NERDTreeDirSlash guibg=none guifg={color4}
hi NERDTreeExecFile guibg=none guifg={color7}
hi ALEErrorSign guibg=none guifg={color1}
hi ALEWarningSign guibg=none guifg={color3}
hi ALEError guibg=none guifg={color1}
hi ALEWarning guibg=none guifg={color3}

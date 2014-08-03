if exists("syntax_on")
    syntax reset
endif
let colors_name = "mycolors"
set bg=dark
hi clear
hi clear VisualNOS

hi StatusLine               ctermfg=244 ctermbg=233 guifg=#808080 guibg=#121212 term=none cterm=none
hi StatusLineNC             ctermfg=244 ctermbg=0   guifg=#808080 guibg=#000000 term=none cterm=none
hi VertSplit                ctermfg=244 ctermbg=233 guifg=#808080 guibg=#121212 term=none cterm=none

hi TabLine                  ctermfg=244 ctermbg=234 guifg=#808080 guibg=#1c1c1c term=underline cterm=underline gui=underline
hi TabLineSel               ctermfg=244 ctermbg=0   guifg=#808080 guibg=#000000 term=none cterm=none
hi TabLineFill              ctermfg=244 ctermbg=234 guifg=#808080 guibg=#1c1c1c term=none cterm=none gui=none

hi SignColumn               ctermfg=244 ctermbg=233 guifg=#808080 guibg=#121212 term=none
hi GitGutterAdd             ctermfg=34  ctermbg=233 guifg=#00af00 guibg=#121212 term=none
hi GitGutterDelete          ctermfg=124 ctermbg=233 guifg=#af0000 guibg=#121212 term=none
hi GitGutterChange          ctermfg=142 ctermbg=233 guifg=#afaf00 guibg=#121212 term=none
hi GitGutterChangeDelete    ctermfg=208 ctermbg=233 guifg=#ff8700 guibg=#121212 term=none

hi Normal                   ctermfg=Grey
hi SpecialKey               term=bold ctermfg=81 guifg=Cyan
hi NonText                  term=bold ctermfg=12 gui=bold guifg=Blue
hi Directory                term=bold ctermfg=159 guifg=Cyan
hi ErrorMsg                 term=standout ctermfg=15 ctermbg=1 guifg=White guibg=Red
hi IncSearch                term=reverse cterm=reverse gui=reverse
hi Search                   term=reverse ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi MoreMsg                  term=bold ctermfg=121 gui=bold guifg=SeaGreen
hi ModeMsg                  term=bold cterm=bold gui=bold
hi LineNr                   term=underline ctermfg=240 ctermbg=233 guifg=#262626 guibg=#121212
hi StatusLine               term=none cterm=none ctermfg=244 ctermbg=233 guifg=#808080 guibg=#121212
hi Question                 term=standout ctermfg=121 gui=bold guifg=Green
hi Title                    term=bold ctermfg=225 gui=bold guifg=Magenta
hi Visual                   term=reverse ctermbg=242 guibg=DarkGrey
hi WarningMsg               term=standout ctermfg=224 guifg=Red
hi WildMenu                 term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi Folded                   term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=DarkGrey
hi FoldColumn               term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey
hi DiffAdd                  term=bold ctermbg=4 guibg=DarkBlue
hi DiffChange               term=bold ctermbg=5 guibg=DarkMagenta
hi DiffDelete               term=bold ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan
hi DiffText                 term=reverse cterm=bold ctermbg=1 gui=bold guibg=Red
hi Conceal                  ctermfg=7 ctermbg=242 guifg=LightGrey guibg=DarkGrey
hi SpellBad                 term=reverse ctermbg=9 gui=undercurl guisp=Red
hi SpellCap                 term=reverse ctermbg=12 gui=undercurl guisp=Blue
hi SpellRare                term=reverse ctermbg=13 gui=undercurl guisp=Magenta
hi SpellLocal               term=underline ctermbg=14 gui=undercurl guisp=Cyan
hi Pmenu                    ctermbg=13 guibg=Magenta
hi PmenuSel                 ctermbg=242 guibg=DarkGrey
hi PmenuSbar                ctermbg=248 guibg=Grey
hi PmenuThumb               cterm=reverse gui=reverse
hi CursorColumn             term=reverse ctermbg=242 guibg=Grey40
hi CursorLine               term=underline cterm=underline guibg=Grey40
hi ColorColumn              term=reverse ctermbg=1 guibg=DarkRed
hi MatchParen               term=reverse ctermbg=6 guibg=DarkCyan
hi Comment                  term=bold ctermfg=14 guifg=#80a0ff
hi Constant                 term=underline ctermfg=13 guifg=#ffa0a0
hi Special                  term=bold ctermfg=224 guifg=Orange
hi Identifier               term=underline cterm=bold ctermfg=14 guifg=#40ffff
hi Statement                term=bold ctermfg=11 gui=bold guifg=#ffff60
hi PreProc                  term=underline ctermfg=81 guifg=#ff80ff
hi Type                     term=underline ctermfg=121 gui=bold guifg=#60ff60
hi Underlined               term=underline cterm=underline ctermfg=81 gui=underline guifg=#80a0ff
hi Ignore                   ctermfg=0 guifg=bg
hi Error                    term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red
hi Todo                     term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow

hi DbgCurrentSign           term=reverse ctermfg=15 ctermbg=9 guifg=#ffffff guibg=#ff0000
hi DbgCurrentLine           term=reverse ctermfg=15 ctermbg=9 guifg=#ffffff guibg=#ff0000
hi DbgBreakptSign           term=reverse ctermfg=15 ctermbg=10 guifg=#ffffff guibg=#00ff00
hi DbgBreakptLine           term=reverse ctermfg=15 ctermbg=10 guifg=#ffffff guibg=#00ff00

" GitGutterAddDefault xxx cleared
" GitGutterChangeDefault xxx cleared
" GitGutterDeleteDefault xxx cleared
" GitGutterChangeDeleteDefault xxx links to GitGutterChangeDefault
" GitGutterAddInvisible xxx cleared
" GitGutterChangeInvisible xxx cleared
" GitGutterDeleteInvisible xxx cleared
" GitGutterChangeDeleteInvisible xxx links to GitGutterChangeInvisble
" GitGutterChangeInvisble xxx cleared
" GitGutterAdd   xxx links to GitGutterAddDefault
" GitGutterChange xxx links to GitGutterChangeDefault
" GitGutterDelete xxx links to GitGutterDeleteDefault
" GitGutterChangeDelete xxx links to GitGutterChangeDeleteDefault
" GitGutterAddLine xxx links to DiffAdd
" GitGutterChangeLine xxx links to DiffChange
" GitGutterDeleteLine xxx links to DiffDelete
" GitGutterChangeDeleteLine xxx links to GitGutterChangeLineDefault
" GitGutterChangeLineDefault xxx cleared

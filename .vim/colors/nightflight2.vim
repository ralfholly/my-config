" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ralf Holly <ralf@hollyfamily.de>
" Last Change:	2006 Dec 28

hi! clear
set background=dark
if exists("syntax_on")
  syntax reset
endi

let g:colors_name = "nightflight2"
hi! Normal          ctermfg=grey guifg=#c0c0ff  guibg=#000025
hi! Scrollbar       guifg=darkcyan  guibg=cyan
hi! Menu            guifg=black  guibg=cyan
hi! SpecialKey      ctermfg=yellow guifg=yellow
hi! NonText         gui=none  guifg=yellow
hi! Directory       guifg=cyan
hi! ErrorMsg        guifg=white  guibg=red
hi! Search          ctermfg=cyan ctermbg=blue guifg=cyan  guibg=blue
hi! MoreMsg         gui=bold  guifg=seagreen
hi! ModeMsg         gui=bold  guifg=white  guibg=blue
hi! LineNr          ctermfg=darkgrey guifg=#505070
hi! Question        gui=bold  guifg=green
hi! StatusLine      gui=bold  guifg=black  guibg=cyan
hi! StatusLineNC    guifg=darkcyan  guibg=black
hi! Title           gui=bold  guifg=magenta
hi! Visual          ctermfg=8 ctermbg=grey cterm=none guifg=black  guibg=white  
hi! WarningMsg      guifg=red
hi! Cursor          guifg=bg  guibg=green
hi! Comment         ctermfg=darkgrey guifg=darkgrey
hi! Identifier      gui=none  guifg=white
hi! Special         guifg=darkgrey
hi! Constant        ctermfg=lightgreen guifg=#30df60
hi! PreProc         ctermfg=darkmagenta guifg=#fcaf3e
hi! Statement       cterm=none ctermfg=cyan gui=none  guifg=#8387ff
hi! Type            cterm=none ctermfg=cyan gui=none  guifg=#8387ff
hi! Error           guifg=white  guibg=red
hi! Todo            guifg=white  guibg=brown
" syntax match   _COperators "+\|-\|\*\|;\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|)\|(\|{\|}\|\.\|\[\|\]"
hi! _COperators     ctermfg=white guifg=white  gui=none  

" For Vim 7
hi! MatchParen      ctermfg=white ctermbg=blue guifg=white guibg=blue


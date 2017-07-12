" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ralf Holly <ralf@approxion.com>
" Last Change:	2011-11-24

hi! clear
set background=dark
if exists("syntax_on")
  syntax reset
endi

let g:colors_name = "nightflight3"
"hi! Normal          ctermfg=grey guifg=#c0c0ff  guibg=#171717
hi! Normal          ctermfg=249 guifg=#c0c0cf  guibg=#171717
hi! Scrollbar       guifg=darkcyan  guibg=cyan
hi! Menu            guifg=black  guibg=cyan
hi! SpecialKey      ctermfg=cyan guifg=cyan
hi! NonText         ctermfg=cyan gui=none  guifg=cyan
hi! Directory       ctermfg=white guifg=white
hi! ErrorMsg        guifg=white  guibg=red
hi! Search          ctermfg=black ctermbg=208 guifg=black  guibg=darkorange
hi! MoreMsg         cterm=none ctermfg=121 gui=none  guifg=seagreen
hi! ModeMsg         gui=bold  guifg=white  guibg=blue
hi! LineNr          ctermfg=238 guifg=#505050
hi! Question        gui=bold  guifg=green
hi! StatusLine      cterm=bold ctermbg=darkgrey ctermfg=white gui=bold  guibg=darkgrey  guifg=white
hi! StatusLineNC    cterm=none ctermbg=darkgrey ctermfg=grey gui=none guibg=darkgrey guifg=grey
hi! Title           gui=bold  guifg=magenta
hi! Visual          ctermfg=black ctermbg=white cterm=none guifg=black  guibg=white  
hi! WarningMsg      guifg=red
hi! Cursor          guifg=bg  guibg=white
hi! Comment         ctermfg=darkgrey guifg=darkgrey
hi! Identifier      cterm=none ctermfg=white gui=none  guifg=white
hi! Special         ctermfg=white guifg=white
hi! Constant        ctermfg=110 guifg=#99BBEE
hi! PreProc         ctermfg=99 guifg=#9966FF
hi! Statement       cterm=none ctermfg=110 gui=none  guifg=#8387ff
hi! Type            cterm=none ctermfg=110 gui=none  guifg=#8387ff
hi! Error           guifg=white  guibg=red
hi! Todo            ctermfg=black ctermbg=cyan guifg=black  guibg=cyan
" syntax match   _COperators "+\|-\|\*\|;\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|)\|(\|{\|}\|\.\|\[\|\]"
hi! _COperators     ctermfg=white guifg=white  gui=none  
hi! xmlTagName      guifg=darkgrey ctermfg=darkgrey
hi! xmlEndTag       guifg=darkgrey ctermfg=darkgrey
hi! xmlTag          guifg=darkgrey ctermfg=darkgrey
hi! xmlCommentPart  guifg=orange ctermfg=darkyellow


" For Vim 8
hi! MatchParen      ctermfg=white ctermbg=blue guifg=white guibg=blue


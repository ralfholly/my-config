" Vim color file
" Maintainer:	Peter Most <PMost@PERA-Software.com>

colorscheme default
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "peter_most_minimal"

highlight Normal		guifg=White		ctermfg=White	guibg=Black
"highlight StatusLine	term=Inverse	"guifg=Reverse	ctermfg=Reverse	guibg=Reverse
highlight Comment		guifg=Green		ctermfg=Green
highlight PreProc		guifg=Magenta	ctermfg=Magenta
highlight String		guifg=Cyan		ctermfg=Cyan
highlight Constant		guifg=Cyan		ctermfg=Cyan
highlight Number		guifg=Cyan		ctermfg=Cyan
highlight Statement		guifg=White		ctermfg=White
highlight Operator		guifg=Yellow	ctermfg=Yellow
highlight Type			guifg=White		ctermfg=White


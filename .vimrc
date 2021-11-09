" Various key mappings
let maplocalleader = ","
let mapleader = ","
nmap <F11> :TlistToggle<CR>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>N :NERDTree %:h<CR>
nmap <Leader>i :echo expand('%:p') '\|' strftime('%c',getftime(expand('%'))) '\|' getfsize(expand('%')) '\|' getfperm(expand('%')) '\|'<CR>
nmap <Leader>, :nohl<CR>
nmap <Leader>d :let@d=str2nr(expand("<cword>"), 16) \| echo @d<CR>
nmap <Leader>x :echo printf("%X", expand("<cword>"))<CR>
nmap <Leader>e :up \| !(%\|unix2dos)<CR>
nmap <Leader>g :grep -k <C-R><C-W> . <CR>
nmap <Leader>G :grep -k <C-R><C-W> 
nmap <Leader>r :up\|!./%<CR>
nmap <Leader>a :up \| cex system("PYTHONPATH=$PYTHONPATH:. pylint " . expand("%")) \| cw <CR>
nmap <Leader>b :up \| !python3 -m unittest % <CR>
nmap <Leader>h :2match Todo /<C-R><C-W>/<CR>
nmap <Leader>H :2match<CR>
nmap <Leader>! :up \| make<CR>
map <Up> gk
map <Down> gj
imap <Up> <C-O>gk
imap <Down> <C-O>gj
inoremap <S-Tab> <C-O><LT><LT>
inoremap # X#
nnoremap <F5> :buffers<CR>:buffer<Space>
nmap <C-L> :nohl\|redraw!<CR>
nmap <Leader>cs :cs find s <C-R>=expand("<cword>")<CR><CR><Tab> 
nmap <Leader>p `[v`]
nmap <S-Left> gT
nmap <S-Right> gt
nmap <S-Down> :cn<CR>
nmap <S-Up> :cp<CR>

" OS-dependent settings
if ! has("unix") 
    " Windows
    set guifont=DejaVu_Sans_Mono:h9:cANSI
    "lan english_US
    map ] 
else
    set t_Co=256 "256 colors for xterm
    " Fix 256 color xterm/vi background color problem.
    au VimLeave * echo ' '
    set guifont=DejaVu\ Sans\ Mono\ 9
endif

" Handling of Ctrl-/Shift-/Alt- arrow keys in screen/tmux-based terminals.
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" Various settings
syn enable
" Enable mouse also in console vim
set mouse=a
set encoding=utf-8
set list
set list listchars=tab:»\ ,trail:·
" set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
filetype plugin on
set background=dark
set backspace=indent,eol,start
set backup
set cpoptions=aABceFsM
set expandtab
set hidden
set vb t_vb= " No bell, not even a visual one.

set modeline
set helplang=en
set history=50
set hlsearch
set ignorecase
set wildignorecase
set incsearch
set ruler
set shiftwidth=4
set number

set tabstop=4
set viminfo='20,<50,s10,rA:,rB:,%
set nowrap
set linebreak
set guioptions-=m
set guioptions-=T
set autoindent
set smartindent
set showmatch
set isfname-=:
"set path=.,,./..,,**,./../**
"set path=.,,./..,./../**,,**
set path=.,./..,,**
"set grepprg=grep\ -nH
set grepprg=ack\ --flush
set printoptions=left:6pc,portrait:n
set printfont=Courier\ New:h8
set complete=.,w,b,u,t
set backupdir=~/.vimbak,.
set nojoinspaces
set formatoptions=cq
set formatlistpat=^\\s*\\d\\+\\.\\s
set browsedir=current
set comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
set wildmenu

colorscheme xoria256 
"colorscheme jellybeans
"colorscheme hemisu
"hi LineNr ctermfg=238 guifg=#404040 ctermbg=233 guibg=#121212
hi clear Search
hi Search term=reverse ctermfg=0 ctermbg=149 guifg=#000000 guibg=#afdf5f
hi clear Todo
"hi Todo ctermfg=0   guifg=#000000 ctermbg=184 guibg=#dfdf00
hi Todo ctermfg=0   guifg=#000000 ctermbg=207 guibg=#ff5fff
hi clear SpecialKey
hi SpecialKey ctermfg=240 guifg=#404040

" Support for TODO for all filetypes
augroup HiglightTODO
    autocmd!
    autocmd WinEnter,VimEnter * :silent! call matchadd('Todo', '\<TODO\>', -1)
augroup END


set cursorline

if has("gui_running")
    set lines=60 columns=180
endif

ca _getip let @i=expand("%") \| let @i=substitute(@i, "\\", "/", "g")
ca _getpp let @*=expand("%:p")
ca _getpt let @*=expand("%:t")
ca _strip s/\(\s\)\+/\1/ge \| \| s/\s\+$//ge | nohl
let java_allow_cpp_keywords=1
let java_ignore_javadoc=1

" Auto-commands
" au! BufNewFile,BufRead *.txt   setlocal fo+=twan tw=70 nosmartindent
au! BufNewFile,BufRead *.c     setlocal tw=80 fo=qro "Autoformat c comments
au! BufNewFile,BufRead *.cpp   setlocal tw=80 fo=qro "Autoformat c comments
au! BufNewFile,BufRead *.h     setlocal tw=80 fo=qro "Autoformat c comments
au! BufNewFile,BufRead *.java  setlocal tw=80 fo=qro "Autoformat java comments
au! BufNewFile,BufRead *.jpp   setlocal tw=80 fo=qro "Autoformat java comments
au! BufReadPost * if &readonly | setlocal nomodifiable | else | setlocal modifiable | endif
"au! BufWritePre * let &backupext = '-' . strftime("%Y%m%d%H%M") . '~' 
au! CursorHold * checktime

" Insert mode abbreviations
ia _tsd <c-r>=strftime("%Y-%m-%d")<cr>
ia _ts <c-r>=strftime("%Y-%m-%d %H:%M")<cr>
ia _tss <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
ia _todo TODO:<c-r>=strftime("%Y-%m-%d")<cr>:<c-r>=expand("$USER")<cr>
"ia _todo \todo <c-r>=strftime("%Y-%m-%d")<cr>:RaHo
ia _xml10 <?xml version="1.0" encoding="utf-8"?>
ia _andns xmlns:android="http://schemas.android.com/apk/res/android"
inoremap <C-r>< <C-R>=expand("%:t:r")<CR>
inoremap <C-r>> <C-R>=toupper(expand("%:t:r"))<CR>

" Aspell integration
ca _spelle w \| !aspell -c "%" --lang=en
ca _spelld w \| !aspell -c "%" --lang=de
ca _aspe setlocal spell spelllang=en_us
ca _aspd setlocal spell spelllang=de
ca _aspoff setlocal spell spelllang=

" Cscope integration
set cscopequickfix=s-,c-,d-,i-,t-,e-
ca _cscope Cscope

" GCC integration
ca _gcc cex system("gcc -Wall -W -g " . expand ("%") . " -o " . expand("%:t:r")) \| cw
ca _g++ cex system("g++ -Wall -W -g " . expand ("%") . " -o " . expand("%:t:r")) \| cw
ca _g11++ cex system("g++ -std=c++11 -Wall -W -g " . expand ("%") . " -o " . expand("%:t:r")) \| cw
ca _g14++ cex system("g++ -std=c++14 -Wall -W -g " . expand ("%") . " -o " . expand("%:t:r")) \| cw

" Pylint integration
ca _pylint cex system("pylint " . expand("%")) \| cw
ca _pylint3 cex system("pylint3 " . expand("%")) \| cw

" NodeLint integration
ca _nodelint cex system("nodelint --reporter vim " . expand("%")) \| cw

" JsHint integration
ca _jshint cex system("jshint_4vim --verbose " . expand("%")) \| cw

" Taglist integration
let g:Tlist_Show_One_File = 1
let g:Tlist_Auto_Update = 1

ca _h vert sfind %:t:r.h
ca _c vert sfind %:t:r.c
ca _cpp vert sfind %:t:r.cpp

" Various abbreviations
ca _here !bash -c "cd %:h;bash --login"

ca _astyle_bdc !astyle --style="allman" --indent=spaces=4 --unpad-paren --align-pointer=type --indent-switches --pad-header --pad-oper 
ca _astyle_fra !astyle --style="allman" --indent=spaces=4 --unpad-paren --align-pointer=type --indent-switches --pad-header --pad-oper 

" .. Todos.
au! BufNewFile,BufReadPost * syn keyword cTodo contained TODO FIXME XXX todo
au! BufNewFile,BufReadPost * syn keyword javaTodo contained TODO FIXME XXX todo

ca _mall cex system("cd ../build ; make_f_plain -j4") \| cw
ca _mc cex system("comp=$(find-zsg-lib.sh " . expand("%:h") . ") ; cd ../build ; make_f_plain $comp -j4") \| cw
ca _mt cex system("comp=$(find-zsg-lib.sh " . expand("%:h") . ") ; comp=${comp%_sut}; cd ../build-ut ; make_f_plain $comp -j4") \| cw
ca _rt ! ../build-ut/$(echo %:h \| sed -r -e 's/^(.*gtest).*/\1/')/*.exe

" Project-specific
" Astyle
"ca _astyle_mc !astyle --style="java" --indent=spaces=4 --unpad-paren --align-pointer=type --indent-switches --pad-header --pad-oper 
ca _astyle_ralf !astyle --style="k&r" --indent=spaces=4 --unpad-paren --align-pointer=type --indent-switches --pad-header --pad-oper 
ca _lintc  cex system("LINT_OPT_POST='c:/home/bin/pc-lint/lnt/env-vim.lnt -hF0 -width(300,4)'  zsg_lint.sh " . expand("%:p")) \| cw
ca _lintf  cex system("LINT_OPT_POST='c:/home/bin/pc-lint/lnt/env-vim.lnt -hF0 -width(300,4)'  zsg_lint.sh -f " . expand("%:p")) \| cw
ca _misrac cex system("LINT_OPT_POST='c:/home/bin/pc-lint/lnt/env-vim.lnt -hF0 -width(300,4)' zsg_lint.sh -m " . expand("%:p")) \| cw
ca _misraf cex system("LINT_OPT_POST='c:/home/bin/pc-lint/lnt/env-vim.lnt -hF0 -width(300,4)' zsg_lint.sh -m -f " . expand("%:p")) \| cw

" Highlighting ARXML short names
ca _short match SpecialKey /SHORT-NAME>\zs\w\+\ze/
ca _shortoff match
ca _elem 2match SpecialKey />\zs[^>]\+\ze</
ca _elemoff 2match

hi CursorLine ctermbg=237
" For jellybeans colorscheme
hi CursorLineNr term=bold cterm=NONE ctermfg=46 guifg=#00FF00
" hi LineNr term=underline ctermfg=238 ctermbg=233 guifg=#605958 guibg=#151515
"
"
if filereadable($HOME . "/.vimrc.local")
	source $HOME/.vimrc.local
endif
if filereadable(".vimrc.local")
	source .vimrc.local
endif

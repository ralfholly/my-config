com! -nargs=0 Cscope :sil call Cscope()
function! Cscope()
    cscope kill 0
    silent !cscope_
    cs add cscope.out . -C
endfunction


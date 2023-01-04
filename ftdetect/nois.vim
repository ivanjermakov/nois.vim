autocmd BufRead,BufNewFile *.no call s:set_nois_filetype()

function! s:set_nois_filetype() abort
    if &filetype !=# 'nois'
        set filetype=nois
    endif
endfunction

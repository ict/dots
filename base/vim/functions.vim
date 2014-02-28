function! SPComment()
    set paste
    let column=virtcol(".")
    let spaces=column - 3
    execute "normal! o/*K\r\r*/\ekk"
    if spaces > 0
        execute "normal! " . spaces . "A \e"
        execute "normal! i^\e"
    endif
    set nopaste
    normal! j
    startinsert!
endfunction

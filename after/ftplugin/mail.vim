set completefunc=CompleteAddress
fun! CompleteAddress(findstart, base)
    if a:findstart
        return searchpos('\s', 'b', line('.'))[1]
    else
        let results = []
        for line in readfile($HOME . '/.config/mutt/alias')
            if line =~ '^alias' && line =~ a:base
                let line = substitute(line, '^alias\s\+\S\+\s\+', '', '')
                call add(results, line)
            endif
        endfor

        return results
    endif
endfun

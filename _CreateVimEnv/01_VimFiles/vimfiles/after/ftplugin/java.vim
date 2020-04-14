" Vim filetype plugin file
" Language: java
"
 " echo "This is Java ftplugin"

 " if exists("b:did_ftplugin") | finish | endif
 " let b:did_ftplugin = 1
 " let s:keepcpo= &cpo
 " set cpo&vim

 " echo "**** Java ftplugin"

 let b:next='\v^\s*public\s+.+\(.*(\n*.*)+\)\s+\{\s*$|\v^\s*protected\s+.+\(.*(\n*.*)+\)\s+\{\s*$|\v^\s*private\s+.+\(.*(\n*.*)+\)\s+\{\s*$'
 let b:prev='\v^\s*public\s+.+\(.*(\n*.*)+\)|\v^\s*protected\s+.+\(.*(\n*.*)+\)|\v^\s*private\s+.+\(.*(\n*.*)+\)'

 execute "nnoremap <silent> <buffer> ]] :call <SID>Java_jump(b:next, 'forward')<CR>"
 execute "nnoremap <silent> <buffer> [[ :call <SID>Java_jump(b:prev, 'backward')<CR>"

 if !exists('*<SID>Java_jump')
     fun! <SID>Java_jump(pattern, mode)

         " normal! 0

        if a:mode == 'forward'
            call search(a:pattern)
        else
            call search(a:pattern, 'b')
        endif

        " normal! ^
    endfun
endif

" let &cpo = s:keepcpo
" unlet s:keepcpo

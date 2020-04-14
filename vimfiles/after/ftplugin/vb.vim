" Vim filetype plugin file
" Language: vb
"
 " echo "This is Vb ftplugin"

 " if exists("b:did_ftplugin") | finish | endif
 " let b:did_ftplugin = 1
 " let s:keepcpo= &cpo
 " set cpo&vim

 " echo "**** Vb ftplugin"

 let b:next='\v^\s*public\s+(sub|function)|\v^\s*protected\s+(sub|function)|\v^\s*private\s+(sub|function)|\v^\s*friend\s+(sub|function)|\v^\s+(sub|function)'
 let b:prev='\v^\s*public\s+(sub|function)|\v^\s*protected\s+(sub|function)|\v^\s*private\s+(sub|function)|\v^\s*friend\s+(sub|function)|\v^\s+(sub|function)'

 execute "nnoremap <silent> <buffer> ]] :call <SID>Vb_jump(b:next, 'forward')<CR>"
 execute "nnoremap <silent> <buffer> [[ :call <SID>Vb_jump(b:prev, 'backward')<CR>"

 if !exists('*<SID>Vb_jump')
     fun! <SID>Vb_jump(pattern, mode)

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

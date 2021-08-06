" Vim filetype plugin file
" Language: javascript
"
 " echo "This is Javascript ftplugin"

 if exists("b:did_ftplugin_javascript") | finish | endif
 let b:did_ftplugin = 1

 let s:keepcpo= &cpo
 set cpo&vim


 let b:next='\v^\s*function\s+\w+\(.*\)\s*(\n*\s*\{)@=|\vfunction\(.*\)\s*(\n*\s*\{)@='
 let b:prev='\v^\s*function\s+\w+\(.*\)\s*(\n*\s*\{)@=|\vfunction\(.*\)\s*(\n*\s*\{)@='

 execute "nnoremap <silent> <buffer> ]] :call <SID>Javascript_jump(b:next, 'forward')<CR>"
 execute "nnoremap <silent> <buffer> [[ :call <SID>Javascript_jump(b:prev, 'backward')<CR>"

 if !exists('*<SID>Javascript_jump')
     fun! <SID>Javascript_jump(pattern, mode)

         " normal! 0

        if a:mode == 'forward'
            call search(a:pattern)
        else
            call search(a:pattern, 'b')
        endif

        " normal! ^
    endfun
endif

let &cpo = s:keepcpo
unlet s:keepcpo

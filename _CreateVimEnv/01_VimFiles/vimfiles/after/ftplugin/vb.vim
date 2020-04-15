" Vim filetype plugin file
" Language: vb
"
 echo "This is Vb ftplugin"

 if exists("b:did_ftplugin_vb") | finish | endif
 let b:did_ftplugin_vb = 1

 let s:keepcpo= &cpo
 set cpo&vim

 " echo "**** Vb ftplugin"

"  " matchit plugin setting
 let b:match_words=
 \ '\%(^\s*\)\@<=\<if\>.*\<then\>\s*$:\%(^\s*\)\@<=\<else\>:\%(^\s*\)\@<=\<elseif\>:\%(^\s*\)\@<=\<end\>\s\+\<if\>,' .
 \ '\%(^\s*\)\@<=\<for\>:\%(^\s*\)\@<=\<next\>,' .
 \ '\%(^\s*\)\@<=\<while\>:\%(^\s*\)\@<=\<wend\>,' .
 \ '\%(^\s*\)\@<=\<do\>:\%(^\s*\)\@<=\<loop\>\s\+\<while\>,' .
 \ '\%(^\s*\)\@<=\<select\>\s\+\<case\>:\%(^\s*\)\@<=\<case\>:\%(^\s*\)\@<=\<end\>\s\+\<select\>,' .
 \ '\%(^\s*\)\@<=\<enum\>:\%(^\s*\)\@<=\<end\>\s\<enum\>,' .
 \ '\%(^\s*\)\@<=\<with\>:\%(^\s*\)\@<=\<end\>\s\<with\>,' .
 \ '\%(^\s*\)\@<=\%(\<\%(private\|protected\|public\)\>\s\+\)\=\<function\>\s\+\([^ \t(]\+\):\%(^\s*\)\@<=\<\1\>\s*=:\%(^\s*\)\@<=\<end\>\s\+\<function\>,' .
 \ '\%(^\s*\)\@<=\%(\<\%(private\|protected\|public\)\>\s\+\)\=\<sub\>\s\+:\%(^\s*\)\@<=\<end\>\s\+\<sub\>'

 let b:match_words .=  ',\%(^\s*\)\@<=\%(\<\%(private\|public\)\>\s\+\)\=\<class\>\s\+:\%(^\s*\)\@<=\<end\>\s\+\<class\>'

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

let &cpo = s:keepcpo
unlet s:keepcpo

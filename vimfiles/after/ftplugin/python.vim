" ---------------------------------
"  ALE Settings
" ---------------------------------
" Check Python files with flake8 and pylint.
let b:ale_linters = ['flake8', 'pylint']
" Select flake8 and pylint, and ignore pylint, so only flake8 is run.
let b:ale_linters_ignore = ['pylint']
" let g:ale_python_flake8_options = ' --ignore=W503,E501'

" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'yapf', 'black']
" let b:ale_fixers = ['autopep8', 'yapf', 'isort']
" let b:ale_fixers = ['autopep8']
" let b:ale_fixers = [ 'yapf']
" let b:ale_fixers = ['isort']
" let b:ale_fixers = ['black']
" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0

 " let b:next='\vdef\s+\w+\(\s*.*\s*\):'
 " let b:prev='\vdef\s+\w+\(\s*.*\s*\):'
 
if !exists("current_compiler")
  compiler python
endif

 let b:next='\vdef\s+\w+\(\_.*\):'
 let b:prev='\vdef\s+\w+\(\_.*\):'

 execute "nnoremap <silent> <buffer> ]] :call <SID>Python_jump(b:next, 'forward')<CR>"
 execute "nnoremap <silent> <buffer> [[ :call <SID>Python_jump(b:prev, 'backward')<CR>"

 if !exists('*<SID>Python_jump')
     fun! <SID>Python_jump(pattern, mode)

         " normal! 0

        if a:mode == 'forward'
            call search(a:pattern)
        else
            call search(a:pattern, 'b')
        endif

        " normal! ^
    endfun
endif

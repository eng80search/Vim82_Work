" echo "Test"

    " autocmd QuickFixCmdPost vim,grep,make if len(getqflist()) != 0 | cwindow | endif
" let &l:winheight = 15

if len(getqflist()) < 15 
  let &l:winheight = len(getqflist())
else
  let &l:winheight = 15
end

" autocmd FileType qf nnoremap <buffer> <Enter> <C-W><Enter><C-W>T

highlight QuickFixError guifg=red
highlight QuickFixWarning ctermbg=red
match QuickFixError /\v^.+error:.+$/
2match QuickFixWarning /^.*warning:.*$/

if exists("b:did_ftplugin_qf") | finish | endif
let b:did_ftplugin_qf = 1

" using t open select row of quickfix
nnoremap <silent> <buffer> t  <C-w><CR><C-w>T

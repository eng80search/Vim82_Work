if exists("current_compiler")
  finish
endif
let current_compiler = "python"

set makeprg=python\ %

" make実行後にQuickfixに出力されるエンコーディングをシステムロケールにする
" 文字化け対策

" make実行前にcp932に変更
function QfMakeConvPre()
    set makeencoding=char
endfunction

" make実行後はdefaultに戻す（utf8）
function QfMakeConvPost()
    set makeencoding=""
endfunction

au QuickfixCmdPost make call QfMakeConvPost()
au QuickfixCmdPre make call QfMakeConvPre()

let s:cpo_save = &cpo
set cpo&vim

CompilerSet errorformat=
      \%*\\sFile\ \"%f\"\\,\ line\ %l\\,\ %m,
      \%*\\sFile\ \"%f\"\\,\ line\ %l,
CompilerSet makeprg=python\ %

let &cpo = s:cpo_save
unlet s:cpo_save

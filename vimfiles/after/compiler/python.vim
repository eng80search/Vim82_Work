if exists("current_compiler")
  finish
endif
let current_compiler = "python"

set makeprg=python\ %

let s:cpo_save = &cpo
set cpo&vim

CompilerSet errorformat=
      \%*\\sFile\ \"%f\"\\,\ line\ %l\\,\ %m,
      \%*\\sFile\ \"%f\"\\,\ line\ %l,
CompilerSet makeprg=python\ %

let &cpo = s:cpo_save
unlet s:cpo_save

if exists("b:did_ftplugin_vue")
    finish
endif
let b:did_ftplugin_vue = 1

"  echo "vue filetype Plugin actived "
" "
" Run both javascript and vue linters for vue files.
let b:ale_linter_aliases = ['javascript', 'vue']
" Select the eslint and vls linters.
let b:ale_linters = ['eslint', 'vls']

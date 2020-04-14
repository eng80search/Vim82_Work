" echo "Test"
highlight QuickFixError guifg=red
highlight QuickFixWarning ctermbg=red
match QuickFixError /\v^.+error:.+$/
2match QuickFixWarning /^.*warning:.*$/

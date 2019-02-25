" Taken from https://github.com/pangloss/vim-javascript/blob/9f3ecf4595fb8a9b0b34e862001daccbbf61d17c/syntax/javascript.vim#L28
" syntax match   typescriptFunctionCall       /\k\+\%(\s*(\)\@=/

" syntax match   typescriptIdentifierName        /\<[^=<>!?+\-*\/%|&,;:. ~@#`"'\[\]\(\)\{\}\^0-9][^=<>!?+\-*\/%|&,;:. ~@#`"'\[\]\(\)\{\}\^]*/ nextgroup=typescriptDotNotation,typescriptArgumentList,typescriptComputedProperty contains=@_semantic,typescriptFunctionCall skipnl skipwhite
" syntax region   typescriptIdentifierName        start=/\<[^=<>!?+\-*\/%|&,;:. ~@#`"'\[\]\(\)\{\}\^0-9][^=<>!?+\-*\/%|&,;:. ~@#`"'\[\]\(\)\{\}\^]*</ end=/>\ze(/ nextgroup=typescriptDotNotation,typescriptArgumentList,typescriptComputedProperty contains=@_semantic,typescriptTypeArguments,typescriptFunctionCall oneline skipnl skipwhite

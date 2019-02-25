" See https://github.com/juliosueiras/vim-terraform-completion#installation
let g:deoplete#omni_patterns = {}
call deoplete#custom#option('omni_patterns', {
\ 'complete_method': 'omnifunc',
\ 'terraform': '[^ *\t"{=$]\w*',
\})

let g:deoplete#enable_at_startup = 1
" set completeopt-=preview

call deoplete#initialize()

call deoplete#custom#option({'auto_complete': v:false})
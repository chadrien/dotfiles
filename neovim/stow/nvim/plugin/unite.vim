let g:unite_source_rec_async_command = ['ack', '-f', '--nofilter']
let g:unite_source_grep_command = 'ack'
let g:unite_source_grep_default_opts = '-i --no-heading --no-color -k -H'
let g:unite_source_grep_recursive_opt = ''

nmap <C-u>fa :Unite -start-insert file_rec/async<CR>
nmap <C-u>ff :Unite -start-insert file/async<CR>
nmap <C-u>ta :Unite -start-insert tab<CR>
nmap <C-u>bu :Unite -start-insert buffer<CR>
nmap <C-u>gr :Unite -start-insert grep<CR>

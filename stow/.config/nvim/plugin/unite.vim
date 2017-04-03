call unite#filters#matcher_default#use(['matcher_fuzzy'])

"let g:unite_source_rec_async_command = ['ack', '-f', '--nofilter']
let g:unite_source_rec_async_command = ['ag', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']
let g:unite_source_grep_command = 'ack'
let g:unite_source_grep_default_opts = '-i --no-heading --no-color -k -H'
let g:unite_source_grep_recursive_opt = ''

function s:reload_unite()
  call unite#custom#source('file_rec', 'ignore_globs', split(&wildignore, ','))
endfunction

command -nargs=0 ReloadUnite call s:reload_unite()
ReloadUnite

nmap <C-u>fa :Unite -start-insert file_rec/async<CR>
nmap <C-u>ff :Unite -start-insert file/async<CR>
nmap <C-u>ta :Unite -start-insert tab<CR>
nmap <C-u>bu :Unite -start-insert buffer<CR>
nmap <C-u>gr :Unite -start-insert grep<CR>
nmap <C-u>ou :Unite -start-insert outline<CR>
nmap <C-u>yy :Unite -start-insert history/yank<CR>
nmap <C-u>bo :Unite -start-insert bookmark<CR>

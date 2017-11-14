call unite#filters#matcher_default#use(['matcher_fuzzy'])

au VimEnter * call unite#custom#source('file_rec', 'ignore_globs', split(&wildignore, ','))
au VimEnter * call unite#custom#source('file_rec/async', 'ignore_pattern', substitute(substitute(&wildignore, '*', '', 'g'), ',', '\\|', 'g'))
au VimEnter * call unite#custom#source('file_rec/git', 'ignore_pattern', substitute(substitute(&wildignore, '*', '', 'g'), ',', '\\|', 'g'))

call unite#custom#source('file/async,file_rec/async,buffer,tab,grep,outline,history/yank,bookmark',
		\ 'sorters', 'sorter_selecta')

nmap <C-u>fa :Unite -start-insert file_rec/git:--cached:--others:--exclude-standard<CR>
nmap <C-u>ff :Unite -start-insert file/async<CR>
nmap <C-u>ta :Unite -start-insert tab<CR>
nmap <C-u>bu :Unite -start-insert buffer<CR>
nmap <C-u>gr :Unite -start-insert grep<CR>
nmap <C-u>ou :Unite -start-insert outline<CR>
nmap <C-u>yy :Unite -start-insert history/yank<CR>
nmap <C-u>bo :Unite -start-insert bookmark<CR>

" Using ag as recursive command.
let g:unite_source_rec_async_command = ['ag', '-i', '--follow', '--nocolor', '--nogroup', '--hidden', '-g', '']

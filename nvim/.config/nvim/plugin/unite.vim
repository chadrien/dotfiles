call unite#custom#source('outline,bookmark',
	\ 'matchers', 'matcher_fuzzy')
call unite#filters#sorter_default#use(['sorter_rank'])

nmap <leader>ou :Unite -start-insert outline<cr>
nmap <leader>bo :Unite -start-insert bookmark<cr>

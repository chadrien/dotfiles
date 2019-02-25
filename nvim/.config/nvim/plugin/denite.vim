nmap <leader>dff :Denite file/rec<cr>
nmap <leader>dfa :Denite file<cr>
nmap <leader>bu :Denite buffer<cr>

call denite#custom#var('file/rec', 'command', [ 'ag', '--follow', '--nocolor', '--nogroup', '-g', '' ]) 
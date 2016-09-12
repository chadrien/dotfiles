let g:python_host_prog = '/opt/homebrew/bin/python2'
let g:python3_host_prog = '/opt/homebrew/bin/python3'

call plug#begin('~/.config/nvim/plugged')
source ~/.config/nvim/Plugfile
call plug#end()

syntax enable
set background=dark
colorscheme solarized

source ~/.config/nvim/init.local.vim
call plug#begin('~/.config/nvim/plugged')
source ~/.config/nvim/Plugfile.vim
call plug#end()

command -nargs=0 PlugReload call s:plug_reload()

function s:plug_reload()
    source ~/.config/nvim/Plugfile.vim
endfunction
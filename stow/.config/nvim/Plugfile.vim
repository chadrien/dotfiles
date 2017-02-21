" theme
function! OnedarkAirline(info)
    if a:info.status == 'installed' || a.info.force
        !mkdir -p ~/.config/nvim/autoload/airline/themes
        !ln -s ~/.config/nvim/plugged/onedark.vim/autoload/airline/themes/onedark.vim ~/.config/nvim/autoload/airline/themes/
    endif
endfunction
Plug 'joshdick/onedark.vim', { 'do': function('OnedarkAirline') }

" airline
Plug 'bling/vim-airline'

" unite
Plug 'shougo/unite.vim'
Plug 'shougo/unite-outline'

" utils
Plug 'kien/ctrlp.vim'
Plug 'embear/vim-localvimrc'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'matchit.zip'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'raimondi/delimitmate'

" syntastic
Plug 'scrooloose/syntastic'

" js
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
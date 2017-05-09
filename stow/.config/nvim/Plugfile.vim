set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.config/nvim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" theme
Plug 'joshdick/onedark.vim', { 'build': { 'unix': 'mkdir -p ~/.config/nvim/autoload/airline/themes ; ln -s ~/.config/nvim/plugged/onedark.vim/autoload/airline/themes/onedark.vim ~/.config/nvim/autoload/airline/themes/' } }

" airline
Plug 'bling/vim-airline'

" unite
NeoBundle 'Shougo/vimproc.vim', { 'build': { 'unix': 'make' } }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'shougo/unite.vim'
NeoBundle 'shougo/unite-outline'
NeoBundle 'Shougo/neoyank.vim'

" utils
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'embear/vim-localvimrc'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'raimondi/delimitmate'
NeoBundle 'Valloric/YouCompleteMe', { 'build': { 'unix': './install.py' } }
NeoBundle 'myusuf3/numbers.vim'
NeoBundle 'troydm/zoomwintab.vim'
NeoBundle 'airblade/vim-gitgutter'

" syntastic
NeoBundle 'scrooloose/syntastic'

" js
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'herringtondarkholme/yats.vim'
NeoBundle 'quramy/tsuquyomi'

" elm
NeoBundle 'elmcast/elm-vim'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
if &compatible
	set nocompatible               " Be iMproved
endif

" Required:
call plug#begin('~/.cache/nvim/plugged')

Plug 'sickill/vim-monokai'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/matchit.zip'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'jez/vim-github-hub'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'embear/vim-localvimrc'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'easymotion/vim-easymotion'
Plug 'RRethy/vim-illuminate'
Plug 'godlygeek/tabular'
Plug 'editorconfig/editorconfig-vim'
Plug 'Shougo/echodoc.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'nathanaelkane/vim-indent-guides'

Plug 'prettier/vim-prettier', { 'do': 'npm install' }

Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'

" required if we want to use the outline source from tsuquyomi
Plug 'Shougo/unite.vim' 
Plug 'Shougo/unite-outline'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'Quramy/tsuquyomi'
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }

" Required:
call plug#end()

" Required:
filetype plugin indent on
syntax enable

colorscheme monokai

let g:node_host_prog='/usr/bin/neovim-node-host'
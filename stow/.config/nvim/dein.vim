" Add or remove your plugins here:
"   call dein#add('Shougo/neosnippet.vim')
"   call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
"   call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
set runtimepath+=/Users/hcuz/src/dotfiles/stow/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/hcuz/src/dotfiles/stow/.config/nvim/dein')
  call dein#begin('/Users/hcuz/src/dotfiles/stow/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/hcuz/src/dotfiles/stow/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " important stuff for some other plugins
  call dein#add('Shougo/vimproc.vim', { 'build': 'make' })

  " unite
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/unite-outline')
  call dein#add('Shougo/neoyank.vim')

  " theme and beautiful stuff
  call dein#add('sickill/vim-monokai')
  call dein#add('bling/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  " utils
  call dein#add('tpope/vim-endwise')
  call dein#add('vim-scripts/matchit.zip')
  call dein#add('tpope/vim-surround')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('mattn/emmet-vim')
  call dein#add('embear/vim-localvimrc')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('raimondi/delimitmate')
  call dein#add('myusuf3/numbers.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('scrooloose/syntastic')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('Valloric/YouCompleteMe', { 'build': './install.sh --tern-completer' })
  call dein#add('easymotion/vim-easymotion')

  " js/ts
  call dein#add('chadrien/yats.vim')
  " call dein#add('leafgarland/typescript-vim')
  call dein#add('Quramy/vim-js-pretty-template')
  " call dein#add('Quramy/tsuquyomi', { 'build': 'mkdir -p ~/.config/nvim/dein/repos/github.com/Quramy/tsuquyomi/after/ftplugin && cp ~/.config/nvim/dein/repos/github.com/Quramy/tsuquyomi/ftdetect/typescript.vim ~/.config/nvim/dein/repos/github.com/Quramy/tsuquyomi/after/ftplugin' })

  " elm
  call dein#add('elmcast/elm-vim')

"   call dein#add()

  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

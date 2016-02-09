" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'airblade/vim-gitgutter'         " Git gutter
Plugin 'szw/vim-g'                      " Goggle search
Plugin 'arnaud-lb/vim-php-namespace'    " Import PHP namespace
Plugin 'ctrlpvim/ctrlp.vim'             " Control P panel
Plugin 'terryma/vim-multiple-cursors'   " Multiple cursors
Plugin 'tpope/vim-surround'             " Surround plugin
Plugin 'tpope/vim-fugitive'             " Git support
Plugin 'vim-airline/vim-airline'        " Vim airline plugin
Plugin 'vim-airline/vim-airline-themes' " Vim airline theme plugin
Plugin 'stephpy/vim-php-cs-fixer'       " PHP-cs-fixer (format code)
Plugin 'ap/vim-css-color'               " CSS Color highlight 
Plugin 'jeetsukumaran/vim-buffergator'  " Buffergator
Plugin 'scrooloose/nerdtree'            " NERDtree
Plugin 'scrooloose/nerdcommenter'       " Code commenter
Plugin 'scrooloose/syntastic'           " Syntastic plugin (syntax checker)
Plugin 'mattn/emmet-vim'                " Emmet
Plugin 'xolox/vim-misc'                 " Required for vim-session
Plugin 'xolox/vim-session'              " Vim session manager
Plugin 'Chiel92/vim-autoformat'         " Code autoformating
Plugin 'tmhedberg/matchit'              " % -> to closing tag
Plugin 'rizzatti/dash.vim'              " Dash help integration
Plugin 'tpope/vim-vinegar'              " File browser improvements
Plugin 'craigemery/vim-autotag'         " Autotag
Plugin 'rking/ag.vim'                   " Ag : global search
Plugin 'skwp/greplace.vim'              " Search and replace
" ----- Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'   " Vim snippet manager
Plugin 'tomtom/tlib_vim'                " dependency to vim snippet manager
Plugin 'garbas/vim-snipmate'            " dependency to vim snippet manager
"Plugin 'honza/vim-snippets'            " snippet samples

" ---- Syntax highlight
Plugin 'jwalton512/vim-blade'           " Laravel blade syntax
Plugin 'posva/vim-vue'                  " Vue (vueify) syntax
Plugin 'hail2u/vim-css3-syntax'         " CSS3 syntax support
Plugin 'wavded/vim-stylus'              " Stylus support for vim

" ---- Themes
Plugin 'kristijanhusak/vim-hybrid-material'         " Material theme

call vundle#end()            " required
filetype plugin indent on    " required

" PLUGINS ---------------------------------------------

" Vundle - you need to install it before. Check more details: https://github.com/gmarik/Vundle.vim
filetype off " required by vundle
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'gmarik/vundle'

" PLUGINS

" > navigation
Plugin 'scrooloose/nerdtree' " presents the filesystem in the form of a tree
Plugin 'Lokaltog/vim-easymotion' " makes a map to easy move the cursor
Plugin 'ctrlpvim/ctrlp.vim' " search and open any file given a name

" > editing tools
Plugin 'scrooloose/nerdcommenter' " comment code
Plugin 'tpope/vim-surround' " makes surroundings easy

" > ruby
Plugin 'tpope/vim-rbenv' " sets ruby path and provide rbenv command
Plugin 'vim-ruby/vim-ruby' " ruby support
Plugin 'tpope/vim-rails' " rails support
Plugin 'thoughtbot/vim-rspec' " rspec support
Plugin 'tpope/vim-endwise' " helps to end certain structures

" > git
Plugin 'airblade/vim-gitgutter'

" > util
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'mtscout6/syntastic-local-eslint.vim' "Prefer local repo install of eslint over global install
Plugin 'vim-scripts/restore_view.vim'
Plugin 'pbrisbin/vim-mkdir' " to create files without creating dirs previously
Plugin 'tpope/vim-sensible'
Plugin 'mileszs/ack.vim'

" > style
Plugin 'godlygeek/tabular'
Plugin 'editorconfig/editorconfig-vim'

" > tmux
Plugin 'christoomey/vim-tmux-navigator' " transparent navigator

" > visual
Plugin 'itchyny/lightline.vim'
Plugin 'bling/vim-airline'
Plugin 'romgrk/winteract.vim'

Plugin 'petelewis/vim-evolution'

" > WOW!
Plugin 'sheerun/vim-polyglot'

" > colors with true color support
Plugin 'lifepillar/vim-solarized8'
Plugin 'rakr/vim-one'

" > load the ftplugin configs
Plugin 'Lucasosf/vimlociraptor'

" END PLUGINS
call vundle#end()

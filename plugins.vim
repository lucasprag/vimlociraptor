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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Shougo/unite.vim' " better that ctrlp?

" > editing tools
Plugin 'scrooloose/nerdcommenter' " comment code
Plugin 'tpope/vim-surround' " makes surroundings easy

" > ruby
Plugin 'tpope/vim-rbenv' " sets ruby path and provide rbenv command
Plugin 'vim-ruby/vim-ruby' " ruby support
Plugin 'tpope/vim-rails' " rails support
Plugin 'thoughtbot/vim-rspec' " rspec support
Plugin 'tpope/vim-endwise' " helps to end certain structures

" > swift
Plugin 'kballard/vim-swift'

" > elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'carlosgaldino/elixir-snippets'
Plugin 'mattreduce/vim-mix'
Plugin 'awetzel/elixir.nvim'

" > javascript
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript' " dependency for the vim-jsx
Plugin 'marcweber/vim-addon-mw-utils' " dependency for snipmate
Plugin 'Shutnik/jshint2.vim'

" > CSS
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'groenewege/vim-less'

" > git
Plugin 'airblade/vim-gitgutter'

" > util
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
"Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/restore_view.vim'
Plugin 'pbrisbin/vim-mkdir' " to create files without creating dirs previously
Plugin 'tpope/vim-sensible'

" > notes
Plugin 'xolox/vim-misc' " dependency for vim-notes
Plugin 'xolox/vim-notes'

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

" > colors
Plugin 'altercation/vim-colors-solarized'

" > load the ftplugin configs
Plugin 'Lucasosf/vimlociraptor'

" END PLUGINS
call vundle#end()

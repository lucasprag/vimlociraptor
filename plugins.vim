" PLUGINS ---------------------------------------------

filetype off " required by vundle
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'gmarik/vundle'

" PLUGINS

" > navigation
Plugin 'Lokaltog/vim-easymotion' " makes a map to easy move the cursor
Plugin 'matze/vim-move' " move lines up and down like sublime text 3
Plugin 'terryma/vim-multiple-cursors' " multiple cursors using C-n when selecting a word

" > finding files/buffers/etc
Plugin 'scrooloose/nerdtree' " presents the filesystem in the form of a tree
set rtp+=/usr/local/opt/fzf
Plugin 'junegunn/fzf.vim' " search and open any file given a name
Plugin 'mileszs/ack.vim' " search with Ack
Plugin 'qpkorr/vim-bufkill' " provides :BD to delete a buffer and keep the window/split intact

" > editing tools
Plugin 'scrooloose/nerdcommenter' " comment code using <leader> cc
Plugin 'tpope/vim-surround' " makes surroundings easy
Plugin 'AndrewRadev/deleft.vim' " delete wrapping if-clauses, try-catch blocks, and similar constructs

" > ruby
Plugin 'tpope/vim-rbenv' " sets ruby path and provide rbenv command
Plugin 'vim-ruby/vim-ruby' " ruby support
Plugin 'tpope/vim-rails' " rails support
Plugin 'thoughtbot/vim-rspec' " rspec support

" > elixir
Plugin 'slashmili/alchemist.vim'

" > javascript
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" > coffeescript
Plugin 'kchmck/vim-coffee-script'

" css
Plugin 'cakebaker/scss-syntax.vim'

" > git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-conflicted'

" > util
Plugin 'ervandew/supertab' " to use tab to trigger completations
Plugin 'vim-scripts/restore_view.vim' " restoring cursor position and folding
Plugin 'pbrisbin/vim-mkdir' " to create files without creating dirs previously (aka mkdir -p)
Plugin 'tpope/vim-sensible' " better defaults
Plugin 'tpope/vim-endwise' " helps to end certain structures
Plugin 'janko-m/vim-test' " run tests using <leader>t or <leader>T see mappings.vim
Plugin 'benmills/vimux' " run tests on a tmux pane
Plugin 'w0rp/ale' " Asynchronous Lint Engine

" > tmux
Plugin 'christoomey/vim-tmux-navigator' " transparent navigator

" > style
Plugin 'godlygeek/tabular' " easy to align code using :Tab /:\zs for example
Plugin 'editorconfig/editorconfig-vim'

" > templates
Plugin 'sheerun/vim-haml' " haml
Plugin 'AndrewRadev/vim-eco' " eco (backbone.js)

" > visual
Plugin 'itchyny/lightline.vim' " light statusline
Plugin 'romgrk/winteract.vim' " resize windows using <leader> w and hjkl

" > devops
Plugin 'chr4/nginx.vim' " nginx
Plugin 'hashivim/vim-terraform' " terraform
Plugin 'stephpy/vim-yaml' " yml, yaml

" > colors with true color support
Plugin 'petelewis/vim-evolution'
Plugin 'lifepillar/vim-solarized8'

" END PLUGINS
call vundle#end()

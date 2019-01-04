" PLUGINS ---------------------------------------------
call plug#begin('~/.vim/plugged')

" > navigation
Plug 'Lokaltog/vim-easymotion' " makes a map to easy move the cursor
Plug 'matze/vim-move' " move lines up and down like sublime text 3
Plug 'terryma/vim-multiple-cursors' " multiple cursors using C-n when selecting a word

" > finding files/buffers/etc
Plug 'scrooloose/nerdtree' " presents the filesystem in the form of a tree
set rtp+=/usr/local/opt/fzf
Plug 'junegunn/fzf.vim' " search and open any file given a name
Plug 'mileszs/ack.vim' " search with Ack
Plug 'qpkorr/vim-bufkill' " provides :BD to delete a buffer and keep the window/split intact

" > editing tools
Plug 'scrooloose/nerdcommenter' " comment code using <leader> cc
Plug 'tpope/vim-surround' " makes surroundings easy
Plug 'AndrewRadev/deleft.vim' " delete wrapping if-clauses, try-catch blocks, and similar constructs

" > ruby
Plug 'tpope/vim-rbenv' " sets ruby path and provide rbenv command
Plug 'vim-ruby/vim-ruby' " ruby support
Plug 'tpope/vim-rails' " rails support
Plug 'thoughtbot/vim-rspec' " rspec support

" > elixir
Plug 'slashmili/alchemist.vim'

" > javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" > coffeescript
Plug 'kchmck/vim-coffee-script'

" css
Plug 'cakebaker/scss-syntax.vim'

" > git
Plug 'airblade/vim-gitgutter'

" > tmux
Plug 'benmills/vimux' " run tests on a tmux pane, works with vim-test
Plug 'christoomey/vim-tmux-navigator' " transparent navigator

" > util
Plug 'pbrisbin/vim-mkdir' " to create files without creating dirs previously (aka mkdir -p)
Plug 'tpope/vim-sensible' " better defaults
Plug 'janko-m/vim-test' " run tests
Plug 'ervandew/supertab' " to use tab to trigger completations
Plug 'vim-scripts/restore_view.vim' " restoring cursor position and folding
Plug 'tpope/vim-endwise' " helps to end certain structures

" > style
Plug 'w0rp/ale' " Asynchronous Lint Engine
Plug 'godlygeek/tabular' " easy to align code using :Tab /:\zs for example
Plug 'editorconfig/editorconfig-vim'

" > templates
Plug 'sheerun/vim-haml' " haml
Plug 'AndrewRadev/vim-eco' " eco (backbone.js) ¯\_(ツ)_/¯

" > visual
Plug 'itchyny/lightline.vim' " light statusline
Plug 'romgrk/winteract.vim' " resize windows interactively
Plug 'ap/vim-css-color' " show color of hexadecimals

" > devops
Plug 'chr4/nginx.vim' " nginx
Plug 'hashivim/vim-terraform' " terraform
Plug 'stephpy/vim-yaml' " yml, yaml

" > colors with true color support
Plug 'petelewis/vim-evolution'
Plug '~/Projects/labs/simpleblack'
"Plug 'lucasprag/simpleblack'

" END PlugS
call plug#end()

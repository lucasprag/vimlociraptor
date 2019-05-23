" PLUGINS ---------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" > navigation
Plug 'easymotion/vim-easymotion' " makes a map to easy move the cursor
Plug 'matze/vim-move' " move lines up and down
Plug 'terryma/vim-multiple-cursors' " multiple cursors using C-n when selecting a word

" > finding files/buffers/etc
Plug 'scrooloose/nerdtree' " presents the filesystem in the form of a tree
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim' " search and open any file given a name
Plug 'mileszs/ack.vim' " search with Ack
Plug 'qpkorr/vim-bufkill' " provides :BD to delete a buffer and keep the window/split intact
Plug 'Asheq/close-buffers.vim' " provides :CloseHiddenBuffers and :CloseOtherBuffers

" > editing tools
Plug 'scrooloose/nerdcommenter' " comment code
Plug 'tpope/vim-surround' " makes surroundings easy

" > ruby
Plug 'tpope/vim-rbenv' " sets ruby path and provide rbenv command
Plug 'vim-ruby/vim-ruby' " ruby support
Plug 'tpope/vim-rails' " rails support

" > elixir
Plug 'slashmili/alchemist.vim'

" > javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Ivo-Donchev/vim-react-goto-definition'

" > coffeescript
Plug 'kchmck/vim-coffee-script'

" css
Plug 'cakebaker/scss-syntax.vim'

" > git
Plug 'airblade/vim-gitgutter'

" > tmux
Plug 'benmills/vimux' " run tests on a tmux pane, works with vim-test
Plug 'christoomey/vim-tmux-navigator' " transparent navigator

" > specs
Plug 'janko-m/vim-test' " run tests on different granularities.

" > util
Plug 'pbrisbin/vim-mkdir' " to create files without creating dirs previously (aka mkdir -p)
Plug 'tpope/vim-sensible' " better defaults
Plug 'ervandew/supertab' " to use tab to trigger completations
Plug 'vim-scripts/restore_view.vim' " restoring cursor position and folding
Plug 'tpope/vim-endwise' " helps to end certain structures
Plug 'liuchengxu/vim-which-key' " shows keybindings in popup when you press <leader>

" > style
Plug 'w0rp/ale' " Asynchronous Lint Engine
Plug 'godlygeek/tabular' " easy to align code using :Tab /:\zs for example
Plug 'editorconfig/editorconfig-vim'

" > templates
Plug 'sheerun/vim-haml' " haml
Plug 'AndrewRadev/vim-eco' " eco (backbone.js) ¯\_(ツ)_/¯

" > visual
Plug 'itchyny/lightline.vim' " really light and fast status line
Plug 'romgrk/winteract.vim' " resize windows interactively
Plug 'ap/vim-css-color' " show color of hexadecimals

" > devops
Plug 'chr4/nginx.vim' " nginx
Plug 'hashivim/vim-terraform' " terraform
Plug 'stephpy/vim-yaml' " yml, yaml

" > colors with true color support
Plug 'petelewis/vim-evolution'
Plug 'lucasprag/simpleblack'

" END PlugS
call plug#end()

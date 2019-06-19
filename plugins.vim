" PLUGINS ---------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" > navigation
Plug 'easymotion/vim-easymotion' " makes a map to easy move the cursor
Plug 'matze/vim-move' " move lines up and down
Plug 'terryma/vim-multiple-cursors' " multiple cursors using C-n when selecting a word

" > finding files/buffers/etc
Plug 'scrooloose/nerdtree' " presents the filesystem in the form of a tree
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " don't need to install fzf separately
Plug 'junegunn/fzf.vim' " search and open any file given a name
Plug 'mileszs/ack.vim' " search with Ack
Plug 'qpkorr/vim-bufkill' " provides :BD to delete a buffer and keep the window/split intact
Plug 'Asheq/close-buffers.vim' " provides :CloseHiddenBuffers and :CloseOtherBuffers

" > editing tools
Plug 'scrooloose/nerdcommenter' " comment code
Plug 'tpope/vim-surround' " makes surroundings easy
Plug 'dhruvasagar/vim-table-mode' " table creator & formatter allowing one to create neat tables as you type

" > ruby
Plug 'tpope/vim-rbenv' " sets ruby path and provide rbenv command
Plug 'vim-ruby/vim-ruby' " ruby support
Plug 'tpope/vim-rails' " rails support

" > elixir
Plug 'elixir-editors/vim-elixir' " syntax highlighting and filetype detection
Plug 'slashmili/alchemist.vim' " all the other things like go to definition and format

" > javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Ivo-Donchev/vim-react-goto-definition'

" > coffeescript
Plug 'kchmck/vim-coffee-script'

" css
Plug 'cakebaker/scss-syntax.vim'

" > git
Plug 'airblade/vim-gitgutter' " add gutter icons to lines with changes
Plug 'rhysd/committia.vim' " more pleasant editing on commit message
Plug 'jreybert/vimagit' " amazing port of emacs magit to vim
Plug 'k0kubun/vim-open-github' " open current file on github

" > tmux
Plug 'benmills/vimux' " run tests on a tmux pane, works with vim-test
Plug 'christoomey/vim-tmux-navigator' " transparent navigator

" > specs
Plug 'janko-m/vim-test' " run tests on different granularities.

" > misc
Plug 'pbrisbin/vim-mkdir' " to create files without creating dirs previously (aka mkdir -p)
Plug 'tpope/vim-sensible' " better defaults
Plug 'vim-scripts/restore_view.vim' " restoring cursor position and folding
Plug 'liuchengxu/vim-which-key' " shows keybindings in popup when you press <leader>
Plug 'majutsushi/tagbar' " panel to see a summary/map of available methods/attributes, :TagbarToggle

" > autocompletation & snippets
Plug 'tpope/vim-endwise' " helps to end certain structures
Plug 'ervandew/supertab' " to use tab to trigger completations

" > style
Plug 'w0rp/ale' " Asynchronous Lint Engine
Plug 'editorconfig/editorconfig-vim'

" > templates
Plug 'sheerun/vim-haml' " haml
Plug 'AndrewRadev/vim-eco' " eco (backbone.js) ¯\_(ツ)_/¯

" > visual
Plug 'itchyny/lightline.vim' " really light and fast status line
Plug 'chrisbra/Colorizer' " show boxes next to hexadecimal numbers with their colors

" > windows
Plug 'romgrk/winteract.vim' " resize windows interactively
Plug 'wesQ3/vim-windowswap' " swap windows

" > devops
Plug 'chr4/nginx.vim' " nginx
Plug 'hashivim/vim-terraform' " terraform
Plug 'stephpy/vim-yaml' " yml, yaml

" snippets.
Plug 'SirVer/ultisnips' " snippets engine
Plug 'honza/vim-snippets' " snippets files

" > colorschemes
Plug 'petelewis/vim-evolution'
Plug 'jaredgorski/SpaceCamp'
Plug 'tomasiser/vim-code-dark'
Plug 'lucasprag/simpleblack'

" > to take a look
" https://github.com/haya14busa/incsearch.vim
" https://github.com/tpope/vim-dadbod
" https://github.com/avdgaag/vim-phoenix

" END Plugs
call plug#end()

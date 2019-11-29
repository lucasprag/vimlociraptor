" PLUGINS ---------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" > navigation
Plug 'easymotion/vim-easymotion' " makes a map to easy move the cursor
Plug 'terryma/vim-multiple-cursors' " multiple cursors using C-n when selecting a word
Plug 'ludovicchabant/vim-gutentags' " (re)generate tag files while staying completely out of your way

" > finding files/buffers/etc
Plug 'scrooloose/nerdtree' " presents the filesystem in the form of a tree
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " don't need to install fzf separately
Plug 'junegunn/fzf.vim' " search and open any file given a name
Plug 'qpkorr/vim-bufkill' " provides :BD to delete a buffer and keep the window/split intact
Plug 'Asheq/close-buffers.vim' " provides :CloseHiddenBuffers and :CloseOtherBuffers

" > editing tools
Plug 'scrooloose/nerdcommenter' " comment code
Plug 'tpope/vim-surround' " makes surroundings easy
Plug 'dhruvasagar/vim-table-mode' " table creator & formatter allowing one to create neat tables as you type
Plug 'junegunn/vim-easy-align' " select text, run :EasyAlign, choose a char to align, press enter
Plug 'junegunn/goyo.vim' " toggle RFC mode

" > ruby
Plug 'tpope/vim-rbenv' " sets ruby path and provide rbenv command
Plug 'tpope/vim-bundler' " very usefull when generating ctags for gems and more
Plug 'vim-ruby/vim-ruby' " ruby support
Plug 'tpope/vim-rails' " rails support

" > elixir
Plug 'elixir-editors/vim-elixir' " syntax highlighting and filetype detection
Plug 'slashmili/alchemist.vim' " all the other things like go to definition and format

" > javascript / typescript
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'Ivo-Donchev/vim-react-goto-definition'

" > coffeescript
Plug 'kchmck/vim-coffee-script'

" css
Plug 'cakebaker/scss-syntax.vim'

" markdown
Plug 'tpope/vim-markdown' " add syntax highlighting to code block on markdown files

" > git
Plug 'rhysd/committia.vim' " more pleasant editing on commit message
Plug 'jreybert/vimagit' " amazing port of emacs magit to vim
Plug 'cohama/agit.vim' " great git log

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
Plug 'lucasprag/tabulous', { 'branch': 'fixed-tab-name' } " rename tabs
Plug 'tpope/vim-endwise' " helps to end certain structures
Plug 'vim-utils/vim-troll-stopper' " adds a different bg to Unicode troll characters
Plug 'RRethy/vim-illuminate' " automatically highlight other uses of the current word under the cursor
Plug 'dhruvasagar/vim-zoom' " zoom into a split
Plug 'lucasprag/ultisnips', { 'branch': 'add-option-to-enable-disable-mapping' } " snippets engine
Plug 'honza/vim-snippets' " actual snippets

" completion framework and much more
Plug 'neoclide/coc.nvim', {
      \ 'branch': 'release',
      \ 'do': ':CocInstall coc-git coc-solargraph coc-elixir coc-vimlsp coc-json coc-css coc-explorer'
      \ }

" > style
Plug 'dense-analysis/ale' " Asynchronous Lint Engine
Plug 'editorconfig/editorconfig-vim'

" > templates
Plug 'sheerun/vim-haml' " haml
Plug 'AndrewRadev/vim-eco' " eco (backbone.js)
Plug 'joukevandermaas/vim-ember-hbs' " handlebars

" > visual
Plug 'itchyny/lightline.vim' " really light and fast status line
Plug 'maximbaz/lightline-ale' " integrates ALE and Lightline

" > windows
Plug 'romgrk/winteract.vim' " resize windows interactively
Plug 'wesQ3/vim-windowswap' " swap windows

" > devops
Plug 'chr4/nginx.vim' " nginx
Plug 'hashivim/vim-terraform' " terraform
Plug 'stephpy/vim-yaml' " yml, yaml
Plug 'dag/vim-fish' " support for fish

" > colorschemes
Plug 'jaredgorski/SpaceCamp'
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'lucasprag/simpleblack'

" > take a look
" https://github.com/m00qek/nvim-contabs
" https://github.com/hardcoreplayers/spaceline.vim, cool, but not customizable
"https://github.com/reedes/vim-wordy

" END Plugs
call plug#end()

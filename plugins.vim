" PLUGINS ---------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" > navigation
Plug 'easymotion/vim-easymotion' " makes a map to easy move the cursor
Plug 'terryma/vim-multiple-cursors' " multiple cursors using C-n when selecting a word
"Plug 'ludovicchabant/vim-gutentags' " (re)generate tag files while staying completely out of your way

" > finding files/buffers/etc
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } " presents the filesystem in the form of a tree
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " don't need to install fzf separately
Plug 'junegunn/fzf.vim' " search and open any file given a name
Plug 'dominickng/fzf-session.vim' " fuzzy search saved sessions
Plug 'Asheq/close-buffers.vim', { 'on': 'Bdelete' } " provides :Bdelete to close all, others or hidden buffers
Plug 'qpkorr/vim-bufkill' " :BB :BF, like :bb and bf but in the context of the window; BD to delete buffer and keep window

" > editing tools
Plug 'scrooloose/nerdcommenter' " comment code
"Plug 'AndrewRadev/tagalong.vim' " automatically rename closing/opening HTML/XML tags

" > ruby
Plug 'tpope/vim-rbenv' " sets ruby path and provide rbenv command
Plug 'tpope/vim-bundler' " very usefull when generating ctags for gems and more
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'eruby'] } " ruby support
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] } " rails support
Plug 'sheerun/vim-haml', { 'for': 'haml' } " haml

" > elixir
Plug 'elixir-editors/vim-elixir', { 'for': ['elixir', 'eelixir'] } " syntax highlighting and filetype detection
Plug 'slashmili/alchemist.vim', { 'for': ['elixir', 'eelixir'] } " all the other things like go to definition and format

" > javascript / typescript
Plug 'yuezk/vim-js', { 'for': 'javascript' }
Plug 'HerringtonDarkholme/yats.vim' " advanced typescript syntax highlighting
Plug 'MaxMEllon/vim-jsx-pretty', { 'for': ['javascript', 'typescript'] }
Plug 'Ivo-Donchev/vim-react-goto-definition', { 'for': ['javascript', 'typescript'] }
Plug 'joukevandermaas/vim-ember-hbs', { 'for': ['html.handlebars'] }

" css
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }

" markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' } " add syntax highlighting to code block on markdown files

" > git
Plug 'rhysd/committia.vim' " more pleasant editing on commit message
Plug 'rhysd/git-messenger.vim', { 'on': 'GitMessenger' }

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
Plug 'RRethy/vim-illuminate' " automatically highlight other uses of the current word under the cursor
Plug 'dhruvasagar/vim-zoom' " zoom into a split
Plug 'SirVer/ultisnips' " snippets engine
Plug 'honza/vim-snippets' " actual snippets
Plug 'gerw/vim-HiLinkTrace' " provides <Plug>HiLinkTrace to debug syntax highlighting
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' } " really useful on longer RFCs


" completion framework and much more
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" > style
Plug 'dense-analysis/ale' " Asynchronous Lint Engine
Plug 'editorconfig/editorconfig-vim'

" > visual
Plug 'Yggdroot/indentLine', { 'on': 'IndentLinesToggle' }
Plug 'norcalli/nvim-colorizer.lua' " high-performance color highlighter for Neovim

" > status line
Plug 'itchyny/lightline.vim' " really light and fast status line
Plug 'maximbaz/lightline-ale' " integrates ALE and Lightline

" > windows
Plug 'romgrk/winteract.vim', { 'on': 'InteractiveWindow' } " resize windows interactively
Plug 'wesQ3/vim-windowswap' " swap windows

Plug 'stephpy/vim-yaml', { 'for': ['yml', 'yaml'] } " yml, yaml
Plug 'dag/vim-fish', { 'for': 'fish' } " support for fish

" > colorschemes
Plug 'lucasprag/simpleblack'
Plug 'chriskempson/base16-vim'
Plug 'ayu-theme/ayu-vim'

" Use official gruvbox again this PR is merged
" https://github.com/morhetz/gruvbox/pull/355
" Plug 'morhetz/gruvbox'
Plug 'lucasprag/gruvbox', { 'branch': 'ability-to-customize-split-line' }
Plug 'bluz71/vim-nightfly-guicolors'

" > take a look
"https://github.com/m00qek/nvim-contabs
"https://github.com/reedes/vim-wordy
"https://github.com/glidenote/memolist.vim
"https://github.com/AndrewRadev/splitjoin.vim
"https://github.com/pechorin/any-jump.vim
"https://github.com/fmoralesc/vim-pad
"https://github.com/brooth/far.vim
"https://github.com/justinmk/vim-sneak
"https://github.com/mg979/vim-visual-multi
"https://github.com/noahfrederick/vim-hemisu " inspiration for my new colorscheme
"https://github.com/flrnd/candid.vim " this one as well
"https://github.com/Yilin-Yang/vim-markbar
"https://github.com/craigemery/vim-autotag
"https://github.com/chriskempson/base16
"https://github.com/camspiers/lens.vim
"https://github.com/kristijanhusak/vim-dadbod-ui
"https://github.com/pacha/vem-tabline
"https://github.com/thaerkh/vim-workspace

call plug#end()

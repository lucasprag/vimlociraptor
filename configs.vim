" CONFIGS ---------------------------------------------

" turns on "plugin" and "indent" at once
filetype indent plugin on

" break lines automaticaly when the reach the end of the window
set wrap

" don't show line numbers
set nonumber
set norelativenumber

" Show partial commands in the last line of the screen
set showcmd

" Always show the status line
set laststatus=2

" Don't need to show mode since status line also shows it
set noshowmode

" enable true colors support
set termguicolors

"favorites are simpleblack, jellybeans and onedark
colorscheme simpleblack

" Highlight searches
set hlsearch

" highlight dynamically as pattern is typed
set incsearch

" A guide column to keep the code to a maximum of 80 chars
set colorcolumn=120

" add some line space for easy reading
set linespace=2

" Use case insensitive search, except when using capital letters
set ignorecase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Display the cursor position on the last line of the screen or in the status
" " line of a window
set ruler

" Use visual bell instead of beeping when doing something wrong
set visualbell

" configs stolen from https://github.com/carlosantoniodasilva/vimfiles/blob/master/vimrc#L134
" Open new split panes to right and bottom, which feels more natural than vim’s default:
set splitbelow
set splitright

set wildignore=*.swp,*.bak,*.pyc,*.class,*.gif,*.png,*.jpg,*.jpeg,*.lock,*.temp

" > make which-key faster
set timeoutlen=300

" enable mouse, it's usuful sometimes
set mouse=a

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set ts=2 sw=2 sts=2
set expandtab

" Reload the file on changes
set autoread

"set fillchars=vert:\│,eob:\

" Makes the yank/past work in the X-server
" Ubuntu: it uses xclip
" OSX: it uses pbcopy/pbpaste
" See more details :help provider-clipboard
set clipboard=unnamedplus

" enable spell checking for all files
set spell

" use both English and Portuguese when doing spell checking
set spelllang=en_us,pt_br

" make the editorconfig work using the external command
let g:EditorConfig_core_mode = 'external_command'

" make vim-test use vim-tmux-runner to run specs in a split bellow
let test#strategy = "vimux"

" height to the split for running specs
let g:VimuxHeight = "30"

" change icons of the asynchronous linting engine '◉'
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'

" make rubocop be executed using bundle exec
let g:ale_ruby_rubocop_executable = 'bundle'

" don't run linters when opening a file
let g:ale_lint_on_enter = 0

" add standardrb back
let g:ale_linters = {
      \ 'ruby': ['rubocop'],
      \ 'javascript': ['eslint'],
      \ 'typescript': ['eslint'],
      \ 'typescript.tsx': ['eslint'],
      \}

let g:ale_fixers = {
      \ 'ruby': ['rubocop'],
      \ 'javascript': ['eslint'],
      \ 'typescript': ['eslint'],
      \ 'typescript.tsx': ['eslint'],
      \}

" keep sign column always open
let g:ale_sign_column_always = 1

" disable ALE's highlighs
let g:ale_set_highlights = 0

" > NERDTree
let NERDTreeDirArrows=1
let NERDTreeMinimalUI=1
let NERDTreeShowLineNumbers=0
let NERDTreeWinSize=40

" disable default mappings from NERDCommenter, I just need to toggle it
let g:NERDCreateDefaultMappings = 0

" Align line-wise comment delimiters flush left instead of following code indentatio
let g:NERDDefaultAlign = 'left'

" don't comment empty lines
let g:NERDCommentEmptyLines = 0

" make vim-test use foreman
let test#ruby#rspec#executable = 'foreman run bundle exec rspec'

" explorer
let g:netrw_liststyle=3

 " disable default mappings from easymotion
let g:EasyMotion_do_mapping = 0

" disable default bindings from vim-windowswap
let g:windowswap_map_keys = 0

" disable default mappings from vim-alchemist
let g:alchemist_mappings_disable = 1
let g:alchemist_tag_disable = 1

" make :UltiSnipsEdit open on a split
let g:UltiSnipsEditSplit="vertical"

" make Colorizer work on neovim
let g:colorizer_use_virtual_text = 1
let g:colorizer_auto_filetype='scss,css,html,vim,jsx,coffee,js'

" change tab names to include both file name and extension
let g:tabulousLabelNameOptions = ':t'
let g:tabulousTabLabelRenameFixed = 1

" enable fenced code block syntax highlighting in markdown files
let g:markdown_fenced_languages = ['ruby', 'elixir', 'javascript', 'html', 'python', 'bash=sh', 'vim', 'help', 'sql']


" ----- needed for CoC -----

" if hidden is not set, TextEdit might fail
set hidden

" Some servers have issues with backup files, neeed for CoC
set nobackup
set nowritebackup

" Better display for messages, neeed for CoC
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000., neeed for CoC
set updatetime=300

" don't give |ins-completion-menu| messages., neeed for CoC
set shortmess+=c

" always show signcolumns, neeed for CoC
set signcolumn=yes

" ----- end -----

" Don't let gutentags run ctags -R . when editing git files
let g:gutentags_exclude_filetypes = ['gitcommit', 'gitconfig', 'gitrebase', 'gitsendemail', 'git']


" needed for indentLine
let g:indentLine_enabled = 0
let g:indentLine_char_list = ['|']

" better place to save sessions files
let g:fzf_session_path = g:vimlociraptor_path . '/sessions'

let g:coc_global_extensions = [
      \ 'coc-tsserver',
      \ 'coc-git',
      \ 'coc-solargraph',
      \ 'coc-elixir',
      \ 'coc-vimlsp',
      \ 'coc-json',
      \ 'coc-css',
      \ 'coc-html',
      \ 'coc-ember'
      \ ]

" enable color highlighter
lua require'colorizer'.setup()

" make fzf a floating window
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9, 'highlight': 'Todo' } }

" move search to the top of the window
let $FZF_DEFAULT_OPTS='--layout=reverse'

" don't need to create BufKill's default mappings
let g:BufKillCreateMappings = 0

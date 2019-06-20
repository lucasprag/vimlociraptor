" CONFIGS ---------------------------------------------

" turns on "detection", "plugin" and "indent" at once
filetype indent plugin on

" show line numbers
set number
set norelativenumber

" Show partial commands in the last line of the screen
set showcmd

" Always show the light line
set laststatus=2

" enable true colors support
set termguicolors

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

set wildignore=*.swp,*.bak,*.pyc,*.class,*.gif,*.png,*.jpg,*.jpeg

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

" Makes the yank/past work in the X-server
" Ubuntu: it uses xclip
" OSX: it uses pbcopy/pbpaste
" See more details :help provider-clipboard
set clipboard=unnamedplus

" make the editorconfig work using the external command
let g:EditorConfig_core_mode = 'external_command'

" make vim-test use vim-tmux-runner to run specs in a split bellow
let test#strategy = "vimux"

" change icons of the asynchronous linting engine
let g:ale_sign_error = '◉'
let g:ale_sign_warning = '◉'

" > NERDTree
let NERDTreeDirArrows=1
let NERDTreeMinimalUI=1
let NERDTreeShowLineNumbers=1

" > smaller git gutter icons
let g:gitgutter_sign_added = '•'
let g:gitgutter_sign_modified = '•'
let g:gitgutter_sign_removed = '•'
let g:gitgutter_sign_removed_first_line = '•'
let g:gitgutter_sign_modified_removed = '•'

" disable default mappings from NERDCommenter, I just need to toggle it
let g:NERDCreateDefaultMappings = 0

" make vim-test use foreman
let test#ruby#rspec#executable = 'foreman run rspec'

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
let tabulousLabelNameOptions = ':t:e'

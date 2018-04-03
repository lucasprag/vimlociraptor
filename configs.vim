" CONFIGS ---------------------------------------------

" TODO: describe this
filetype indent plugin on

" Show partial commands in the last line of the screen
set showcmd

" Always show the light line
set laststatus=2

" true color
if has('termguicolors')
  set termguicolors
endif

colorscheme vim-material

" Highlight searches
set hlsearch

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

" Display line numbers on the left
set number

" ignore node_modules when running ctrlp plugin
set wildignore+=*/node_modules/*,*.so,*.swp,*.zip

" configs stolen from https://github.com/carlosantoniodasilva/vimfiles/blob/master/vimrc#L134
" Open new split panes to right and bottom, which feels more natural than vim’s default:
set splitbelow
set splitright

" IDENTATION ----------------------------------------

" Indentation settings for using 2 spaces instead of tabs.
" " Do not change 'tabstop' from its default value of 8 with this setup.
set ts=2 sw=2 sts=2
set expandtab

" Reload the file on changes
set autoread

" Makes the yank/past work in the X-server
" Ubuntu: it uses xclip
" OSX: it uses pbcopy/pbpaste
" See more details :help provider-clipboard
set clipboard=unnamedplus

" Airline - status bar
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='material'

" set syntax html for handlebar files
autocmd BufNewFile,BufRead *.hbs   set syntax=html

" make the editorconfig work using the external command
let g:EditorConfig_core_mode = 'external_command'

" make vim-test use vim-tmux-runner
let test#strategy = "vimux"

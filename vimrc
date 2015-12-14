syntax on

" Toggle past mode
set pastetoggle=<F2>

" Makes no compatible with the venerable old vi
set nocompatible

" Vundle - you need to install it before. Check more details: https://github.com/gmarik/Vundle.vim
filetype off " required by vundle
set rtp+=~/.config/nvim/vundle
call vundle#begin()

Plugin 'gmarik/vundle'

" PLUGINS

" > navigation
Plugin 'scrooloose/nerdtree' " presents the filesystem in the form of a tree
Plugin 'Lokaltog/vim-easymotion' " makes a map to easy move the cursor
Plugin 'kien/ctrlp.vim' " index and search for files
Plugin 'dyng/ctrlsf.vim' " an ack/ag powered code search and view tool

" > editing tools
Plugin 'scrooloose/nerdcommenter' " comment code
Plugin 'tpope/vim-surround' " edit surrounding something

" > ruby
Plugin 'tpope/vim-rbenv' " sets ruby path and provide rbenv command
Plugin 'vim-ruby/vim-ruby' " ruby support
Plugin 'tpope/vim-rails' " rails support
Plugin 'thoughtbot/vim-rspec' " rspec support
Plugin 'tpope/vim-rake' " rake support
Plugin 'tpope/vim-endwise' " helps to end certain structures 

" > python
Plugin 'hdima/python-syntax'

" > elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'carlosgaldino/elixir-snippets'
Plugin 'mattreduce/vim-mix'

" > javascript
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'

" > CSS
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'groenewege/vim-less'

" > git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" > util
Plugin 'tpope/vim-repeat'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Shutnik/jshint2.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/syntastic'
Plugin 'rizzatti/dash.vim'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-scripts/restore_view.vim'

Plugin 'MarcWeber/vim-addon-mw-utils' " dependency for vim-snippets
Plugin 'tomtom/tlib_vim' " dependency for vim-snippets
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets' " dependency for vim-snippets

" > style
Plugin 'godlygeek/tabular'

" > visual
Plugin 'itchyny/lightline.vim'
Plugin 'bling/vim-airline'

" Inception: install this repository to get ftplugins and other configurations
Plugin 'Lucasosf/dragoz'

" END PLUGINS
call vundle#end()

" TODO: describe this
filetype indent plugin on

" Show partial commands in the last line of the screen
set showcmd

" Enable light line
set laststatus=2

" A guide column to keep the code to a maximum of 80 chars
set colorcolumn=80

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" USABILITY -------------------------------------

"add some line space for easy reading
set linespace=4

" Use case insensitive search, except when using capital letters
set ignorecase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" " While this behaviour deviates from that of Vi, it does what most users
" " coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" " line of a window
set ruler

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Enable use of the mouse for all modes
set mouse=a

" Display line numbers on the left
set number

" IDENTATION -----------------------------------

" Indentation settings for using 2 spaces instead of tabs.
" " Do not change 'tabstop' from its default value of 8 with this setup.
set ts=2 sw=2 sts=2
set expandtab

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" " next search
nnoremap <C-L> :nohl<CR><C-L>

" MAPPINGS --------------------------------------

" Mapping <tab> to change navigate on tabs
nmap <tab> :tabnext<CR>
" Mapping control + <tab> to go to the previous tab
nmap <S-tab> :tabprevious<CR>

" Open file under cursor in another tab
map gft <C-w>gf<CR>

" Opens XML files with xmllint
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

" Max of open tabs opened
set tabpagemax=100

" Blank spaces killer
" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd WinEnter * match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Run to clean trailing whitespace
command FixSpaces %s/\s\+$/

" Reload the file on changes
set autoread

set clipboard=unnamed

" Copy and cut an entire line to clipboard
vmap <C-c> :w !pbcopy<CR><CR>
vmap <C-x> :!pbcopy<CR>

" Function to Increment numbers in a column.
" Extracted from: http://vim.wikia.com/wiki/Making_a_list_of_numbers
function! IncrementNumbersInColumn()
  let a = line('.') - line("'<")
  let c = virtcol("'<")
  if a > 0
    execute 'normal! '.c.'|'.a."\<C-a>"
  endif
  normal `<
endfunction

" Map the above function to CTRL + a
vnoremap <C-a> :call IncrementNumbersInColumn()<CR>

" Linters - JS, SCSS and Ruby
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_scss_checkers = ['scss_lint']
"let g:syntastic_ruby_checkers = ['rubocop']

" Airline - status bar
" You need to install powerline fonts in order to be able to " see some icons:
" $ git clone https://github.com/powerline/fonts.git && cd fonts
" $ ./install.sh
" (using Droid Sans Mono for Powerline)
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Load config per project if '.vimrc.local' is present
if filereadable(glob("./.vimrc.local"))
  source ./.vimrc.local
endif

" Load custom configs without have to change insane-coder
if filereadable(glob("~/.vimrc.after"))
  source ~/.vimrc.after
endif

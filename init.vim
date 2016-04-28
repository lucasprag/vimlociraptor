syntax on

" absolute path to vimlociraptor dir
let g:vimlociraptor_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function LoadFile(file_name)
  let full_file_path = g:vimlociraptor_path . '/' . a:file_name

  if filereadable(full_file_path)
    exec 'source ' . full_file_path
  endif
endfunction

" Toggle past mode
set pastetoggle=<F2>

" Makes no compatible with the venerable old vi
set nocompatible

call LoadFile('plugins.vim')

" TODO: describe this
filetype indent plugin on

" Show partial commands in the last line of the screen
set showcmd

" Enable light line
set laststatus=2

" A guide column to keep the code to a maximum of 80 chars
set colorcolumn=80

" Change the ColorColumn color to lightgrey
highlight ColorColumn ctermbg=0 guibg=lightgrey

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
"set nostartofline

" Display the cursor position on the last line of the screen or in the status
" " line of a window
set ruler

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Display line numbers on the left
set number

" IDENTATION ----------------------------------------

" Indentation settings for using 2 spaces instead of tabs.
" " Do not change 'tabstop' from its default value of 8 with this setup.
set ts=2 sw=2 sts=2
set expandtab

" Reload the file on changes
set autoread

set clipboard=unnamed

call LoadFile('mappings.vim')

" Linters for the sake of good style
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_scss_checkers = ['scss_lint']
"let g:syntastic_ruby_checkers = ['rubocop']

" Airline - status bar
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

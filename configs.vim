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

set termguicolors

colorscheme evolution

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

" make the editorconfig work using the external command
let g:EditorConfig_core_mode = 'external_command'

" make vim-test use vim-tmux-runner to run specs in a split bellow
let test#strategy = "vimux"

" when fixing conflicts it displays the version name of each split in the vim statusbar
" needed for christoomey/vim-conflicted
set stl+=%{ConflictedVersion()}

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

" Lightline, thanks @statico
let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
\   'left': [['mode', 'paste'], ['filename', 'modified']],
\   'right': [['lineinfo'], ['percent'], ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok']]
\ },
\ 'component_expand': {
\   'linter_warnings': 'LightlineLinterWarnings',
\   'linter_errors': 'LightlineLinterErrors',
\   'linter_ok': 'LightlineLinterOK'
\ },
\ 'component_type': {
\   'readonly': 'error',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error'
\ },
\ 'component_function': {
\   'filename': 'LightlineFilename',
\ },
\ }

function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ⚠', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ✖'', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓ ' : ''
endfunction

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

autocmd User ALELint call s:MaybeUpdateLightline()

" Update and show lightline but only if it's visible (e.g., not in Goyo)
function! s:MaybeUpdateLightline()
  if exists('#lightline')
    call lightline#update()
  end
endfunction


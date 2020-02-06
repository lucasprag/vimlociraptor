" STATUS LINE --------------------------------------------

" light line
function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

" Update and show lightline but only if it's visible (e.g., not in Goyo)
function! g:MaybeUpdateLightline()
  if exists('#lightline')
    call lightline#update()
  end
endfunction

autocmd User ALELint call g:MaybeUpdateLightline()

" colorschemes I like the most are jellybeans, seoul256 and simpleblack
let g:lightline = {
\ 'colorscheme': 'nord',
\ 'active': {
\   'left': [['mode', 'paste'], ['filename', 'modified']],
\   'right': [['lineinfo'], ['filetype'], ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok', 'gutentags']]
\ },
\ 'inactive': {
\   'left': [['filename']],
\   'right': [['lineinfo'], ['filetype']]
\ },
\ 'component_expand': {
\   'linter_checking': 'lightline#ale#checking',
\   'linter_warnings': 'lightline#ale#warnings',
\   'linter_errors': 'lightline#ale#errors',
\   'linter_ok': 'lightline#ale#ok',
\   'gutentags': 'gutentags#statusline()'
\ },
\ 'component_type': {
\   'readonly': 'error',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error'
\ },
\ 'component_function': {
\   'filename': 'LightlineFilename',
\ }
\ }


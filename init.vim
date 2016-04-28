" [vim] lociraptor ------------------------------------

" absolute path to vimlociraptor dir
let g:vimlociraptor_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function LoadFile(file_name)
  let full_file_path = g:vimlociraptor_path . '/' . a:file_name

  if filereadable(full_file_path)
    exec 'source ' . full_file_path
  endif
endfunction

call LoadFile('plugins.vim')

call LoadFile('configs.vim')

call LoadFile('mappings.vim')

" Linters for the sake of good style
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_scss_checkers = ['scss_lint']
"let g:syntastic_ruby_checkers = ['rubocop']

" Load config per project if '.vimrc.local' is present
if filereadable(glob("./.vimrc.local"))
  source ./.vimrc.local
endif

" Load custom configs without have to change insane-coder
if filereadable(glob("~/.vimrc.after"))
  source ~/.vimrc.after
endif

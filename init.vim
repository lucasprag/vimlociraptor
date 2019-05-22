" =============================================================================
" Name:          [Vim]lociraptor
" File:          init.vim
" Description:   My personal collections of of plugins and mappings for NeoVim.
" Author:        Lucas Arantes <lucasprag.com>
" =============================================================================

" absolute path to vimlociraptor dir
let g:vimlociraptor_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

function! LoadFile(file_name)
  let full_file_path = g:vimlociraptor_path . '/' . a:file_name

  if filereadable(full_file_path)
    exec 'source ' . full_file_path
  endif
endfunction

call LoadFile('plugins.vim')

call LoadFile('commands.vim')

call LoadFile('configs.vim')

call LoadFile('mappings.vim')

call LoadFile('statusline.vim')


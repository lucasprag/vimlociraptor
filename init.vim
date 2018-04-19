" =============================================================================
" Name:          [Vim]lociraptor
" File:          init.vim
" Description:   Init file
" Author:        Lucas Oliveira <github.com/lucasprag>
" =============================================================================

function LoadFile(file_name)
  execute 'source' fnamemodify(expand('<sfile>'), ':h') . '/' . a:file_name
endfunction

call LoadFile('plugins.vim')

call LoadFile('configs.vim')

call LoadFile('mappings.vim')


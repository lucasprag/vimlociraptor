let g:mix_test_command = "! mix test {spec}"

function! RunNearestSpec()
  let l:spec = @% . ":" . line(".")
  execute substitute(g:mix_test_command, "{spec}", l:spec, "g")
endfunction

" Runs the tests
map <leader>t :Dispatch mix test<CR>
map <leader>s :call RunNearestSpec()<CR>

"au BufRead,BufNewFile *.exs		set filetype=elixir

let g:mix_test_command = "! docker-compose run web mix test {spec}"

function! RunNearestSpec()
  let l:spec = @% . ":" . line(".")
  execute substitute(g:mix_test_command, "{spec}", l:spec, "g")
endfunction

" Runs the tests
map <leader>t docker-compose run web mix test<CR>
map <leader>s :call RunNearestSpec()<CR>




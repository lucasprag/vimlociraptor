" COMMANDS --------------------------------------------

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=white guibg=white
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=white guibg=white

" show white spaces with the red color
match ExtraWhitespace /\s\+$/
autocmd WinEnter * match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" I type so fast that :w becomes :W
command! W w
command! Q q
command! WQ wq
command! Wq wq
command! WQa wqa
command! Wqa wqa
command! WQA wqa

" Remove byebug, debugger, binding.pry, the _ is needed to avoid that waste of time
" @see http://vim.wikia.com/wiki/Power_of_g
command! RemoveDebuggers global/byebug\|debugger\|pry/delete_

" Remove puts, console.log, the _ is needed to avoid that waste of time
command! RemovePuts global/puts\|console.log/delete_

" Replace whitespace for nothing
command! CleanWhiteSpaces %s/\s\+$/

" set syntax html for handlebar files
autocmd BufNewFile,BufRead *.hbs   set syntax=html

" thank you @dmfay for this gem https://dev.to/dmfay/comment/4g5e
" it doesn't work that well
"augroup myvimrc
  "au!
  "au BufWritePost *.vim so $MYVIMRC
"augroup END


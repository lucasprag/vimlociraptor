" COMMANDS --------------------------------------------

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=white guibg=white

" show white spaces with the red color
match ExtraWhitespace /\s\+$/
autocmd WinEnter * match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" I type so fast that :w becomes :W
command W w
command Q q
command WQ wq
command Wq wq
command WQa wqa
command Wqa wqa
command WQA wqa

" Replace byebug for nothing
command RemoveByebugs g/byebug/d

" Replace whitespace for nothing
command CleanWhiteSpaces %s/\s\+$/

" set syntax html for handlebar files
autocmd BufNewFile,BufRead *.hbs   set syntax=html

" thank you @dmfay for this gem https://dev.to/dmfay/comment/4g5e
" augroup myvimrc
"   au!
"   au BufWritePost *.vim so $MYVIMRC
" augroup END


" COMMANDS --------------------------------------------

" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=white guibg=white
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=white guibg=white
match ExtraWhitespace /\s\+$/
autocmd WinEnter,BufWinEnter * match ExtraWhitespace /\s\+$/

" I type so fast that :w becomes :W
command! W w
command! Q q
command! WQ wq
command! Wq wq
command! WQa wqa
command! Wqa wqa
command! WQA wqa
command! Q q
command! Qa qa
command! QA qa

" remove byebug, debugger, binding.pry, puts, console.log
" the _ is needed to avoid some waste of time http://vim.wikia.com/wiki/Power_of_g
command! RemoveDebuggers global/byebug\|debugger\|pry\|puts\|console.log/delete_

" remove trailing spaces
function! RemoveTrailingSpaces()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction

command! RemoveTrailingSpaces :call RemoveTrailingSpaces()

" > hide which_key from statusline
autocmd! FileType which_key
autocmd! FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" > hide fzf from statusline
autocmd! FileType fzf
autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" set syntax/filetype tmux for tmux.conf files (no dot)
autocmd BufNewFile,BufRead tmux.conf set syntax=tmux filetype=tmux

" reload vim configuration (aka vimrc)
" :e reloads buffer to trigger the FileType event, useful if you don't want to put files into ftplugin
command! ReloadVimConfig so $MYVIMRC
  \| execute 'e'
  \| echo 'config reloaded!'


" open vimlociraptor's config files from anywhere
command! OpenMappingsVim execute 'e ' g:vimlociraptor_path . '/mappings.vim'
command! OpenPluginsVim execute 'e ' g:vimlociraptor_path . '/plugins.vim'
command! OpenCommandsVim execute 'e ' g:vimlociraptor_path . '/commands.vim'
command! OpenConfigsVim execute 'e ' g:vimlociraptor_path . '/configs.vim'
command! OpenStatusLineVim execute 'e ' g:vimlociraptor_path . '/statusline.vim'

command! FormatElixirFile silent :!mix format %

" not sure why ftdetect doesn't work for vim-ember-hbs
au BufNewFile,BufRead *.handlebars,*.hbs set filetype=html.handlebars syntax=handlebars

function! ToggleLineNumbers()
  if &number == 1
    set nonumber
  else
    set number
  endif
endfunction

command! ToggleLineNumbers :call ToggleLineNumbers()

" go to definition using ctags, requires "ctargs -R ." to be ran before
command! GoToTag execute ':tag ' . expand("<cword>")

command! GoToTagOnVsplit :vsplit
      \| execute ':tag ' . expand("<cword>")

command! GoToTagOnSplit :split
      \| execute ':tag ' . expand("<cword>")


command! CopyFullPath let @+ = expand("%:p")
command! CopyRelativePath let @+ = expand("%")
command! CopyFileName let @+ = expand("%:t")

command! TurnOffSearchHighlight :set nohlsearch

" comment highlighting to json
autocmd FileType json syntax match Comment +\/\/.\+$+

" Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Rg with preview, toggle preview by pressing ?
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" fzf.vim has the command 'History:' to fuzzy find the history of commands
command! RunLastRg :History: Rg<CR>



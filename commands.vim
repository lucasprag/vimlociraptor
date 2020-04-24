" COMMANDS --------------------------------------------

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

" highlight trailing whitespace
" inspired on https://vi.stackexchange.com/questions/8563/toggle-highlighting-of-trailing-whitespace
let g:toggleHighlightWhitespace = 1
function! ToggleHighlightWhitespace() abort
  let g:toggleHighlightWhitespace = 1 - g:toggleHighlightWhitespace
  call RefreshHighlightWhitespace()
endfunction

function! RefreshHighlightWhitespace() abort
  if g:toggleHighlightWhitespace == 1 " normal action, do the hi
    highlight ExtraWhitespace ctermbg=white guibg=white
    match ExtraWhitespace /\s\+$/
    augroup HighLightWhitespace
      autocmd! BufWinEnter * match ExtraWhitespace /\s\+$/
      autocmd! InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
      autocmd! InsertLeave * match ExtraWhitespace /\s\+$/
      autocmd BufWinLeave * call clearmatches()
    augroup END
  else " clear whitespace highlighting
    "call clearmatches()
    autocmd! HighLightWhitespace BufWinEnter
    autocmd! HighLightWhitespace InsertEnter
    autocmd! HighLightWhitespace InsertLeave
    autocmd! HighLightWhitespace BufWinLeave
  endif
endfunction

autocmd! BufWinEnter,BufWinLeave * call RefreshHighlightWhitespace()

" > don't highlight trailing spaces for the whick_key buffer
autocmd! FileType which_key call ToggleHighlightWhitespace()
      \| autocmd BufLeave <buffer> call ToggleHighlightWhitespace()


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
autocmd BufNewFile,BufRead *.handlebars,*.hbs set filetype=html.handlebars syntax=handlebars

" add some sort of highlighting to inky templates
autocmd BufNewFile,BufRead *.inky set filetype=html

function! ToggleLineNumbers()
  if &number == 1
    set nonumber
  else
    set number
  endif
endfunction

command! ToggleLineNumbers :call ToggleLineNumbers()

function! ToggleRelativeLineNumbers()
  if &relativenumber == 1
    set norelativenumber
  else
    set relativenumber
  endif
endfunction

command! ToggleRelativeLineNumbers :call ToggleRelativeLineNumbers()

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

" Overwrite fzf's Files command to include a preview
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview('down:80%'), <bang>0)

" Overwrite fzf's History command to include a preview
command! -bang History
  \ call fzf#vim#history(fzf#vim#with_preview('down:80%'))

" Rg with preview, toggle preview by pressing ?
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview('down:80%', '?'),
  \   <bang>0)

" set spell checking for markdown files
autocmd BufNewFile,BufRead *.md setlocal spell

" ask for a name to save the current session
function! g:SaveSession()
  call inputsave()
  let name = input('Enter new name: ')
  call inputrestore()

  execute ':Session ' . name
endfunction


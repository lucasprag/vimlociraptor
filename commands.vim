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
command! Q q
command! Qa qa
command! QA qa

" Remove byebug, debugger, binding.pry
" the _ is needed to avoid some waste of time http://vim.wikia.com/wiki/Power_of_g
command! RemoveDebuggers global/byebug\|debugger\|pry/delete_

" Remove puts, console.log, the _ is needed to avoid that waste of time
command! RemovePuts global/puts\|console.log/delete_

" Replace whitespace for nothing
command! CleanWhiteSpaces %s/\s\+$/

" set syntax html for handlebar files
autocmd! BufNewFile,BufRead *.hbs set syntax=html

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


" open the vimlociraptor configs files from anywhere
command! OpenMappingsVim execute 'e ' g:vimlociraptor_path . '/mappings.vim'
command! OpenPluginsVim execute 'e ' g:vimlociraptor_path . '/plugins.vim'
command! OpenCommandsVim execute 'e ' g:vimlociraptor_path . '/commands.vim'
command! OpenConfigsVim execute 'e ' g:vimlociraptor_path . '/configs.vim'
command! OpenStatusLineVim execute 'e ' g:vimlociraptor_path . '/statusline.vim'

command! FormatElixirFile silent :!mix format %

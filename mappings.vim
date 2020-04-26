" MAPPINGS --------------------------------------------
let mapleader = "\<Space>"

call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_map = {}

" b => buffers ----------
let g:which_key_map.b = { 'name': '+buffers' }
let g:which_key_map.b.a = [':Bdelete all', 'close all']

nmap ; :Buffers<CR>
let g:which_key_map.b.b = [':Buffers', 'buffers'] " list buffers

let g:which_key_map.b.d = [':BD', 'close'] " delete a buffer but keep its window
let g:which_key_map.b.o = [':Bdelete hidden', 'close others'] " close all buffers except buffer in current window
let g:which_key_map.b.w = [':bd', 'close window and buffer']

" goes to the previous/next buffer
nmap <S-h> :BB<CR>
nmap <S-l> :BF<CR>
let g:which_key_map.b.p = [':BB', 'previous']
let g:which_key_map.b.n = [':BF', 'next']

let g:which_key_map.b.L = ['Lines', 'lines']
let g:which_key_map.b.l = ['BLines', 'lines']

" c => code ----------
let g:which_key_map.c = { 'name': '+code' }
let g:which_key_map.c.d = [':GoToTag', 'tag definition']
let g:which_key_map.c.f = ['<Plug>(coc-definition)', 'coc definition']
let g:which_key_map.c.r = ['<Plug>(coc-references)', 'references']
let g:which_key_map.c.n = ['<Plug>(coc-rename)', 'rename']

let g:which_key_map.c.c = ['<plug>NERDCommenterToggle', 'comment'] " toggle comment
let g:which_key_map.c[' '] = ['RemoveTrailingSpaces', 'remove trailing spaces']
let g:which_key_map.c.p = ['RemoveDebuggers', 'remove debuggers'] " remove byebug, debugger, etc
let g:which_key_map.c.s = ['Snippets', 'snippets']
let g:which_key_map.c.t = ['Filetypes', 'change file type']
let g:which_key_map.c.h = ['TurnOffSearchHighlight', 'turn off highlight']

" CoC gotos mappings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" f => file ----------
let g:which_key_map.f = { 'name': '+file' }
let g:which_key_map.f.f = ['CopyFullPath', 'copy full path']
let g:which_key_map.f.n = ['CopyFileName', 'copy file name']
let g:which_key_map.f.r = ['CopyRelativePath', 'copy relative path']
let g:which_key_map.f.m = ['Marks', 'marks']

" g => git ----------
let g:which_key_map.g = { 'name': '+git' }
let g:which_key_map.g.o = [':CocCommand git.browserOpen', 'open on github']
let g:which_key_map.g.s = [':GFiles?', 'status']

" j => jump ----------
let g:which_key_map.j = { 'name': '+jump' }
let g:which_key_map.j.l = ['<Plug>(easymotion-lineforward)', 'forward']
let g:which_key_map.j.j = ['<Plug>(easymotion-j)', 'down']
let g:which_key_map.j.k = ['<Plug>(easymotion-k)', 'up']
let g:which_key_map.j.h = ['<Plug>(easymotion-linebackward)', 'backward']

let g:which_key_map.j.f = ['<Plug>(easymotion-w)', 'forward/down']
let g:which_key_map.j.b = ['<Plug>(easymotion-b)', 'backward/up']

map f <Plug>(easymotion-lineforward)
map F <Plug>(easymotion-linebackward)

" p => project ----------
map <C-p> :Files<CR>
map s :Rg<CR>

let g:which_key_map.p = { 'name': '+project' }
let g:which_key_map.p.f = ['Files', 'files'] " fuzzy find files
let g:which_key_map.p.g = ['Tags', 'tags'] " fuzzy find tags
let g:which_key_map.p.t = ['NERDTreeToggle', 'tree'] " toggle nerdtree
let g:which_key_map.p.l = ['NERDTreeFind', 'locate on tree'] " locate file on nerdtree
let g:which_key_map.p.s = ['Rg', 'search'] " ALT-A + enter to copy everything to quickfix

" s => sessions----------
let g:which_key_map.s = { 'name': '+sessions' }
let g:which_key_map.s.s = [':call g:SaveSession()', 'save']
let g:which_key_map.s.l = ['Sessions', 'list'] " <Ctrl-X> deletes session under the cursor
let g:which_key_map.s.q = ['SQuit', 'quit tracking sessions']

" TAB => tabs ----------
nmap <Tab> :tabnext<CR>
nmap <S-Tab> :tabprevious<CR>
let g:which_key_map['<Tab>'] = { 'name': '+tabs' }
let g:which_key_map['<Tab>'].n = ['tabnew', 'new']
let g:which_key_map['<Tab>'].l = ['tabnext', 'next'] " next tab (hjkL)
let g:which_key_map['<Tab>'].h = ['tabprevious', 'previous'] " previous tab (Hjkl)
let g:which_key_map['<Tab>'].c = ['tabclose', 'close']
let g:which_key_map['<Tab>'].r = [':call g:tabulous#renameTab()', 'rename']

" t => tests ----------
let g:which_key_map.t = { 'name': '+tests' }
let g:which_key_map.t.t = ['TestNearest', 'nearest']
let g:which_key_map.t.f = ['TestFile', 'file']
let g:which_key_map.t.l = ['TestLast', 'last']
let g:which_key_map.t.g = ['TestVisit', 'visit']
let g:which_key_map.t.m = 'which_key_ignore'

" T => toggles ----------
let g:which_key_map.T = { 'name': '+toggles' }
let g:which_key_map.T.a = ['ALEToggle', 'ALE'] " toggle linting
let g:which_key_map.T.c = [':Colors', 'colorschemes']
let g:which_key_map.T.t = [':TableModeToggle', 'table mode']
let g:which_key_map.T.n = [':ToggleLineNumbers', 'numbers']
let g:which_key_map.T.r = [':ToggleRelativeLineNumbers', 'relative numbers']
let g:which_key_map.T.m = [':messages', 'messages']
let g:which_key_map.T.i = [':IndentLinesToggle', 'indent lines']

" v => vimlociraptor ----------
let g:which_key_map.v = { 'name': '+vimlociraptor' }
let g:which_key_map.v.m = ['OpenMappingsVim', 'mappings.vim']
let g:which_key_map.v.p = ['OpenPluginsVim', 'plugins.vim']
let g:which_key_map.v.c = ['OpenCommandsVim', 'commands.vim']
let g:which_key_map.v.f = ['OpenConfigsVim', 'configs.vim']
let g:which_key_map.v.s = ['OpenStatusLineVim', 'statusline.vim']

let g:which_key_map.v.r = ['ReloadVimConfig', 'reload']
let g:which_key_map.v.i = ['PlugInstall', 'install']
let g:which_key_map.v.u = ['PlugUpdate', 'update']
let g:which_key_map.v.k = ['PlugClean', 'clean']

let g:which_key_map.v.o = [':call coc#refresh()', 'refresh coc']
let g:which_key_map.v.h = [':Helptags', 'help tags']

" w => windows ----------
let g:which_key_map.w = { 'name': '+windows' }
let g:which_key_map.w.c = ['q', 'close']
let g:which_key_map.w.r = ['InteractiveWindow', 'resize interactively']
let g:which_key_map.w.f = ['Windows', 'find']

let g:which_key_map.w['-']  = ['split', 'split horizontally']
let g:which_key_map.w['/'] = ['vsplit', 'split vertically']
nmap <C-\> :vsplit<CR>

let g:which_key_map.w.s = [':call WindowSwap#EasyWindowSwap()', 'swap'] " need to run it on both windows
let g:which_key_map.w.z = ['<Plug>(zoom-toggle)', 'zoom']

" ignore
let g:which_key_map.b.u = { 'name': 'which_key_ignore' }
let g:which_key_map.b.f = 'which_key_ignore'

let g:which_key_map.C = { 'name': 'which_key_ignore' }
let g:which_key_map.h = { 'name': 'which_key_ignore' }
let g:which_key_map['!'] = { 'name': 'which_key_ignore' }
" ----------------------------------------------

" language specific mappings ----------
" (not using ftplugin because I want all my mappings to live in one file)
"
" l => ruby ----------
function! s:MapRuby()
  let g:which_key_map.l = { 'name': '+ruby' }
  let g:which_key_map.l.a = ['A', 'alternate']
  let g:which_key_map.l.u = [':ALEFindReferences -relative', 'usages']
  let g:which_key_map.l.r = ['R', 'related']
  let g:which_key_map.l.e = ['<Plug>(ale_next_wrap)', 'errors']
  let g:which_key_map.l.f = ['ALEFix', 'format']
endfunction

autocmd! FileType ruby,erubyjremmen/vim-ripgrep call s:MapRuby()


" l => elixir ----------
function! s:MapElixir()
  let g:which_key_map.l = { 'name': '+elixir' }
  let g:which_key_map.l.d = [':call alchemist#exdef()', 'definition']
  let g:which_key_map.l.e = [':call alchemist#exdoc()', 'ExDocs']
  let g:which_key_map.l.f = [':FormatElixirFile', 'format']
  let g:which_key_map.l.i = [':IEx', 'IEx']
  let g:which_key_map.l.s = [':call alchemist#jump_tag_stack()', 'stack']
endfunction

autocmd! FileType elixir call s:MapElixir()


" l => javascript ----------
function! s:MapJavaScript()
  let g:which_key_map.l = { 'name': '+javascript' }
  let g:which_key_map.l.d = [':call ReactGotoDef()', 'definition'] " go to definition
  let g:which_key_map.l.f = [':CocCommand prettier.formatFile', 'format']
endfunction

autocmd! FileType javascript,json call s:MapJavaScript()


" ----------------------------------------------

" Copy and cut an entire line to clipboard
vmap <C-c> :w !pbcopy<CR><CR>
vmap <C-x> :!pbcopy<CR>

" Save using Ctrl + s, ¯\_(ツ)_/¯
map <C-s> :w<CR>
map <C-q> :q<CR>
map <C-a> :wqa<CR>


" Disable cursor keys in normal mode, no idea how to use emojis
map <Left>  :echo "use h instead (hjkl)"<CR>
map <Right> :echo "use l instead (hjkl)"<CR>
map <Up>    :echo "use k instead (hjkl)"<CR>
map <Down>  :echo "use j instead (hjkl)"<CR>


" use Alt + hjkl instead of Ctrl + hjkl
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-\> :TmuxNavigatePrevious<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>

" use Ctrl + hj to move lines
let g:move_key_modifier = 'C'

" open window to find recent files
map r :History<CR>

" fuzzy search for file types and manually set it
nmap <C-f> :Filetypes<CR>

" jump arround easily even if there are no empty lines
" this is an altenative to <S-[> and <S-]>
nmap <C-j> 10j
nmap <C-k> 10k

" move this away since I can't remove it, TODO: remove this plugin?
let g:table_mode_map_prefix = "<leader>C"

nmap <C-t> <Plug>HiLinkTrace

" MAPPINGS --------------------------------------------
let mapleader = "\<Space>"

call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_map = {}

" This config uses which_key to map keys following this pattern:
" let g:which_key_map.b.b = ['command', 'description']
"
" Example:
"   The line bellow maps <leader>bb to execute :Buffers<CR>
"   let g:which_key_map.b.b = ['Buffers', 'buffers']

" Buffers ----------

nmap ; :Buffers<CR>
let g:which_key_map.b = { 'name': '+buffers' }
let g:which_key_map.b.a = ['BA', 'alternate']
let g:which_key_map.b.b = ['Buffers', 'buffers'] " list buffers
let g:which_key_map.b.d = ['BD', 'delete'] " delete a buffer and keep the window/split intact
let g:which_key_map.b.h = ['CloseHiddenBuffers', 'close hidden'] " close all buffers not visible in any window
let g:which_key_map.b.n = ['BF', 'next']
let g:which_key_map.b.o = ['CloseOtherBuffers', 'close others'] " close all buffers except buffer in current window
let g:which_key_map.b.p = ['BB', 'previous']

" ignore
let g:which_key_map.b.u = { 'name': 'which_key_ignore' }
let g:which_key_map.b.f = 'which_key_ignore'
let g:which_key_map.b.w = 'which_key_ignore'

" Commands ----------
let g:which_key_map.c = { 'name': '+commands' }
let g:which_key_map.c.b = ['RemoveDebuggers', 'remove byebug|debugger|binding.pry'] " remove byebug, debugger, etc
let g:which_key_map.c.d = ['Deleft', 'delete wrapping block'] " Delete a wrapping if-clause, try-catch block, etc. and shift left.
let g:which_key_map.c.s = ['CleanWhiteSpaces', 'clean white spaces'] " clean trailing whitespace
let g:which_key_map.c.p = ['RemovePuts', 'remove puts|console.log()'] " remove puts, console.log(), etc


" Files ----------

nmap <leader>fa :Ack!
let g:which_key_map.f = { 'name': '+files' }
let g:which_key_map.f.s = ['w', 'save'] " Save file
let g:which_key_map.f.w = [':Ack! "\b<cword>\b"', 'search word'] " search word using ACK

" Project ----------

map <C-p> :GFiles<CR>
let g:which_key_map.p = { 'name': '+project' }
let g:which_key_map.p.f = ['GFiles', 'find'] " closefuzzy finder for files and buffers
let g:which_key_map.p.t = ['NERDTreeToggle', 'tree'] " toggle nerdtree
let g:which_key_map.p.l = ['NERDTreeFind', 'locate on tree'] " locate file on nerdtree

" Tabs ----------

nmap <Tab> :tabnext<CR>
let g:which_key_map['<Tab>'] = { 'name': '+tabs' }
let g:which_key_map['<Tab>'].n = ['tabnew', 'new']
let g:which_key_map['<Tab>'].l = ['tabnext', 'next'] " next tab (hjkL)
let g:which_key_map['<Tab>'].h = ['tabprevious', 'previous'] " previous tab (Hjkl)
let g:which_key_map['<Tab>'].d = ['tabclose', 'delete']

" tEsts ----------

let g:which_key_map.e = { 'name': '+tests' }
let g:which_key_map.e.t = ['TestNearest', 'nearest']
let g:which_key_map.e.f = ['TestFile', 'file']
let g:which_key_map.e.l = ['TestLast', 'last']
let g:which_key_map.e.g = ['TestVisit', 'visit']


" Toggles ----------
let g:which_key_map.t = { 'name': '+toggles' }
let g:which_key_map.t.a = ['<plug>ALEToggle', 'ALE'] " toggle linting
let g:which_key_map.t.c = ['<plug>NERDCommenterToggle', 'comment'] " toggle comment
let g:which_key_map.t.h = ['TurnOffHighlight', 'turn off highlight'] " turn off search highlighting until the next search <- DOESN'T WORK, NO IDEA WHY


" Windows ----------

let g:which_key_map.w = { 'name': '+windows' }
let g:which_key_map.w.r = ['InteractiveWindow', 'resize']
let g:which_key_map.w.q = ['q', 'quit']

" ignore
let g:which_key_map.h = { 'name': 'which_key_ignore' }
let g:which_key_map['!'] = { 'name': 'which_key_ignore' }
" ----------------------------------------------

" Copy and cut an entire line to clipboard
vmap <C-c> :w !pbcopy<CR><CR>
vmap <C-x> :!pbcopy<CR>

" Save with Ctrl + s, so friends can use my vim
map <C-s> :w<CR>
map <C-q> :q<CR>
map <C-a> :wqa<CR>

" Disable cursor keys in normal mode, no idea how to use emojis
map <Left>  :echo "use h instead (hjkl)"<CR>
map <Right> :echo "use l instead (hjkl)"<CR>
map <Up>    :echo "use k instead (hjkl)"<CR>
map <Down>  :echo "use j instead (hjkl)"<CR>


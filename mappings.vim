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

let g:which_key_map.b = { 'name': '+buffers' }
let g:which_key_map.b.a = ['BA', 'alternate']
let g:which_key_map.b.b = ['Buffers', 'buffers'] " list buffers
map ; :Buffers<CR>
let g:which_key_map.b.d = ['BD', 'delete'] " delete a buffer and keep the window/split intact
let g:which_key_map.b.p = ['BB', 'previous']
let g:which_key_map.b.n = ['BF', 'next']

" ignore
let g:which_key_map.b.u = { 'name': 'which_key_ignore' }
let g:which_key_map.b.f = 'which_key_ignore'
let g:which_key_map.b.w = 'which_key_ignore'

" Files ----------

let g:which_key_map.f = { 'name': '+files' }
let g:which_key_map.f.s = ['w', 'save'] " Save file
nmap <leader>fa :Ack!
let g:which_key_map.f.w = [':Ack! "\b<cword>\b"', 'search word'] " search word using ACK

" Project ----------

let g:which_key_map.p = { 'name': '+project' }
let g:which_key_map.p.f = ['GFiles', 'find'] " closefuzzy finder for files and buffers
map <C-p> :GFiles<CR>
let g:which_key_map.p.t = ['NERDTreeToggle', 'tree'] " toggle nerdtree
let g:which_key_map.p.l = ['NERDTreeFind', 'locate on tree'] " locate file on nerdtree

" Tabs ----------

nmap <Tab><Tab> :tabnext<CR>
let g:which_key_map['<Tab>'] = { 'name': '+tabs' }
let g:which_key_map['<Tab>'].n = ['tabnew', 'new']
let g:which_key_map['<Tab>'].l = ['tabnext', 'next'] " next tab (hjkL)
let g:which_key_map['<Tab>'].h = ['tabprevious', 'previous'] " previous tab (Hjkl)
let g:which_key_map['<Tab>'].d = ['tabclose', 'delete']

" Tests ----------

let g:which_key_map.t = { 'name': '+tests' }
let g:which_key_map.t.t = ['TestNearest', 'nearest']
let g:which_key_map.t.f = ['TestFile', 'file']
let g:which_key_map.t.l = ['TestLast', 'last']
let g:which_key_map.t.g = ['TestVisit', 'visit']

" Text ----------

let g:which_key_map.x = { 'name': '+text' }
let g:which_key_map.x.b = ['RemoveDebuggers', 'remove byebug|debugger|binding.pry'] " remove byebug, debugger, etc
let g:which_key_map.x.c = ['<plug>NERDCommenterToggle', 'comment'] " toggle comment
let g:which_key_map.x.d = ['Deleft', 'delete wrapping block'] " Delete a wrapping if-clause, try-catch block, etc. and shift left.
let g:which_key_map.x.h = ['TurnOffHighlight', 'turn off highlight'] " turn off search highlighting until the next search <- DOESN'T WORK, NO IDEA WHY
let g:which_key_map.x.p = ['RemovePuts', 'remove puts|console.log()'] " remove puts, console.log(), etc
let g:which_key_map.x.s = ['CleanWhiteSpaces', 'clean white spaces'] " clean trailing whitespace

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


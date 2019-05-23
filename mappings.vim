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

" b => buffers ----------
nmap ; :Buffers<CR>
let g:which_key_map.b = { 'name': '+buffers' }
let g:which_key_map.b.a = ['BA', 'alternate']
let g:which_key_map.b.b = ['Buffers', 'buffers'] " list buffers
let g:which_key_map.b.d = ['BD', 'delete'] " delete a buffer but keep the window/split intact
let g:which_key_map.b.h = ['CloseHiddenBuffers', 'close hidden'] " close all buffers not visible in any window
let g:which_key_map.b.n = ['BF', 'next']
let g:which_key_map.b.o = ['CloseOtherBuffers', 'close others'] " close all buffers except buffer in current window
let g:which_key_map.b.p = ['BB', 'previous']

" ignore
let g:which_key_map.b.u = { 'name': 'which_key_ignore' }
let g:which_key_map.b.f = 'which_key_ignore'
let g:which_key_map.b.w = 'which_key_ignore'


" c => code ----------
let g:which_key_map.c = { 'name': '+code' }
let g:which_key_map.c.b = ['RemoveDebuggers', 'remove byebug|debugger|binding.pry'] " remove byebug, debugger, etc
let g:which_key_map.c.c = ['<plug>NERDCommenterToggle', 'comment'] " toggle comment
let g:which_key_map.c.s = ['CleanWhiteSpaces', 'clean white spaces'] " clean trailing whitespace
let g:which_key_map.c.p = ['RemovePuts', 'remove puts|console.log()'] " remove puts, console.log(), etc


" f => files ----------
nmap <leader>fa :Ack!
let g:which_key_map.f = { 'name': '+files' }
let g:which_key_map.f.s = ['w', 'save'] " Save file

" j => jump ----------
let g:which_key_map.j = { 'name': '+jump' }

let g:which_key_map.j.h = ['<Plug>(easymotion-linebackward)', 'jump backward']
let g:which_key_map.j.j = ['<Plug>(easymotion-j)', 'jump down']
let g:which_key_map.j.k = ['<Plug>(easymotion-k)', 'jump up']
let g:which_key_map.j.l = ['<Plug>(easymotion-lineforward)', 'jump forward']


" p => project ----------
map <C-p> :GFiles<CR>
let g:which_key_map.p = { 'name': '+project' }
let g:which_key_map.p.f = ['GFiles', 'find'] " closefuzzy finder for files and buffers
let g:which_key_map.p.t = ['NERDTreeToggle', 'tree'] " toggle nerdtree
let g:which_key_map.p.l = ['NERDTreeFind', 'locate on tree'] " locate file on nerdtree
let g:which_key_map.p.s = [':Ack! "\b<cword>\b"', 'search word'] " search word using ACK


" TAB => tabs ----------
nmap <Tab> :tabnext<CR>
let g:which_key_map['<Tab>'] = { 'name': '+tabs' }
let g:which_key_map['<Tab>'].n = ['tabnew', 'new']
let g:which_key_map['<Tab>'].l = ['tabnext', 'next'] " next tab (hjkL)
let g:which_key_map['<Tab>'].h = ['tabprevious', 'previous'] " previous tab (Hjkl)
let g:which_key_map['<Tab>'].d = ['tabclose', 'delete']


" e => tests ----------
let g:which_key_map.e = { 'name': '+tests' }
let g:which_key_map.e.t = ['TestNearest', 'nearest']
let g:which_key_map.e.f = ['TestFile', 'file']
let g:which_key_map.e.l = ['TestLast', 'last']
let g:which_key_map.e.g = ['TestVisit', 'visit']


" t => toggles ----------
let g:which_key_map.t = { 'name': '+toggles' }
let g:which_key_map.t.a = ['ALEToggle', 'ALE'] " toggle linting
let g:which_key_map.t.h = ['TurnOffHighlight', 'turn off highlight'] " turn off search highlighting until the next search <- DOESN'T WORK, NO IDEA WHY


" s => Snippets ----------
let g:which_key_map.s = { 'name': '+snippets ' }

" check it later
" https://github.com/Shougo/neosnippet.vim


" w => windows ----------
let g:which_key_map.w = { 'name': '+windows' }
let g:which_key_map.w.q = ['q', 'quit']
let g:which_key_map.w.r = ['InteractiveWindow', 'resize interactively']

let g:which_key_map.w.h = ['split', 'split horizontally']
nmap <C-\> :vsplit<CR>
let g:which_key_map.w.v = ['vsplit', 'split vertically']

" ignore
let g:which_key_map.h = { 'name': 'which_key_ignore' }
let g:which_key_map['!'] = { 'name': 'which_key_ignore' }
" ----------------------------------------------
"

" r => ruby (only show for ruby files) ----------
function! s:MapRuby()
  let g:which_key_map.r = { 'name': '+ruby' }
  let g:which_key_map.r.a = ['A', 'alternate']
  let g:which_key_map.r.r = ['R', 'related']
endfunction

autocmd! FileType ruby call s:MapRuby()

" r => javascript (only show for js files) ----------
function! s:MapJavaScript()
  let g:which_key_map.r = { 'name': '+javascript' }
  let g:which_key_map.r.d = [':call ReactGotoDef()', 'definition'] " go to definition
endfunction

autocmd! FileType javascript call s:MapJavaScript()


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
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-\> :TmuxNavigatePrevious<cr>

" use Ctrl + hj to move lines
let g:move_key_modifier = 'C'



" MAPPINGS --------------------------------------------
let mapleader = "\<space>"

" Buffers ----------

" list buffers
nmap <leader>bb :Buffers<CR>

" delete a buffer and keep the window/split intact
nmap <leader>bd :BD<CR>


" Commands ----------

" turn off search highlighting until the next search
nmap <leader>ch :nohl<CR>

" clean trailing whitespace
nmap <leader>cs :CleanWhiteSpaces<CR>

" remove byebug, debugger, etc
nmap <leader>cb :RemoveDebuggers<CR>

" remove puts, console.log(), etc
nmap <leader>cl :RemovePuts<CR>

" Delete a wrapping if-clause, try-catch block, etc. and shift left.
nmap <leader>cd :Deleft<CR>


" Files ----------

" Save file
nmap <leader>fs :w<CR>

" search using ACK
nmap <leader>fa :Ack!

" search word using ACK
nmap <leader>fw :Ack! "\b<cword>\b" <CR>


" Project ----------

" closefuzzy finder for files and buffers
map <leader>pf :GFiles<CR>
map <C-p> :GFiles<CR>

" toggle nerdtree
nmap <leader>pt :NERDTreeToggle<CR>

" locate file on nerdtree
nmap <leader>pl :NERDTreeFind<CR>


" Tabs ----------

" new
nmap <leader><tab>n :tabnew<CR>

" next tab (hjkL)
nmap <leader><tab>l :tabnext<CR>

" previous tab (Hjkl)
nmap <leader><tab>h :tabprevious<CR>

" delete
nmap <leader><tab>d :tabclose<CR>


" Tests ----------
nmap <silent> <leader>tt :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tg :TestVisit<CR>


" Windows ----------

" Resize windows easily
nmap <leader>wr :InteractiveWindow<CR>

" Close window
nmap <leader>wq :q<CR>



" ----------------------------------------------

" Copy and cut an entire line to clipboard
vmap <C-c> :w !pbcopy<CR><CR>
vmap <C-x> :!pbcopy<CR>

" Save with Ctrl + s, so friends can use my vim
map <C-s> :w<CR>
map <C-q> :q<CR>
map <C-a> :wqa<CR>

" Disable cursor keys in normal mode, no idea how to use emojis
map <Left>  :echo ":trollface:"<cr>
map <Right> :echo ":trollface:"<cr>
map <Up>    :echo ":trollface:"<cr>
map <Down>  :echo ":trollface:"<cr>


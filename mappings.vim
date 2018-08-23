" MAPPINGS --------------------------------------------

" turn off search highlighting until the next search
nmap <leader>h :nohl<CR>

" use <tab> to change navigate on tabs
nmap <tab> :tabnext<CR>

" use <shift> + <tab> to go to the previous tab
nmap <S-tab> :tabprevious<CR>

" Run to clean trailing whitespace
nmap <leader><space> :CleanWhiteSpaces<enter>

" Copy and cut an entire line to clipboard
vmap <C-c> :w !pbcopy<CR><CR>
vmap <C-x> :!pbcopy<CR>

nmap <space> :NERDTreeToggle<enter>

" Resize of windows made easily
nmap <leader>w :InteractiveWindow<CR>

" Run to remove debug methods
nmap <leader>b :RemoveByebugs<enter>

" Save with Ctrl + S, so friends can use my vim
map <C-s> :w<enter>
map <C-q> :q<enter>
map <C-a> :wqa<enter>

" Disable cursor keys in normal mode
map <Left>  :echo ":trollface:"<cr>
map <Right> :echo ":trollface:"<cr>
map <Up>    :echo ":trollface:"<cr>
map <Down>  :echo ":trollface:"<cr>

" ACK
map <leader>a :tabnew<enter>:Ack

" run tests
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" fuzzy finder for files and buffers
map <C-p> :GFiles<enter>
nmap ; :Buffers<CR>



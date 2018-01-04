" MAPPINGS --------------------------------------------

" turn off search highlighting until the next search
nnoremap <C-space> :nohl<CR><C-space>

" Mapping <tab> to change navigate on tabs
nmap <tab> :tabnext<CR>

" Mapping control + <tab> to go to the previous tab
nmap <S-tab> :tabprevious<CR>

" Max of open tabs opened
set tabpagemax=100

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=white guibg=white

" show white spaces with the red color
match ExtraWhitespace /\s\+$/
autocmd WinEnter * match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Run to clean trailing whitespace
command CleanWhiteSpaces %s/\s\+$/
nmap <leader><space> :CleanWhiteSpaces<enter>

" Copy and cut an entire line to clipboard
vmap <C-c> :w !pbcopy<CR><CR>
vmap <C-x> :!pbcopy<CR>

nmap <space> :NERDTreeToggle<enter>

" Resize of windows made easily
nmap <leader>w :InteractiveWindow<CR>

" Run to remove debug methods
command RemoveByebugs g/byebug/d
nmap <leader>b :RemoveByebugs<enter>

" Save with Ctrl + S, so friends can use my vim
map <C-s> :w<enter>
map <C-q> :q<enter>
map <C-a> :wqa<enter>

" I type so fast that :w becomes :W
command W w
command Q q
command WQ wq
command Wq wq
command WQa wqa
command Wqa wqa
command WQA wqa

" Disable cursor keys in normal mode
map <Left>  :echo ":trollface:"<cr>
map <Right> :echo ":trollface:"<cr>
map <Up>    :echo ":trollface:"<cr>
map <Down>  :echo ":trollface:"<cr>

" ACK
map <leader>a :tabnew<enter>:Ack

" Notes
map <leader>n :vsplit ~/Dropbox/devnotes/todo.md <enter>

" run tests
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>


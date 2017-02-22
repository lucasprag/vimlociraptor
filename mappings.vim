" MAPPINGS --------------------------------------------

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" " next search
nnoremap <C-L> :nohl<CR><C-L>

" Mapping <tab> to change navigate on tabs
nmap <tab> :tabnext<CR>
" Mapping control + <tab> to go to the previous tab
nmap <S-tab> :tabprevious<CR>

" Open file under cursor in another tab
map gft <C-w>gf<CR>

" Opens XML files with xmllint
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

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

" Rspec command
let g:rspec_command = "! docker-compose run web bundle exec rspec {spec} --color"
let g:rspec_runner = "os_x_iterm2"

" Save with Ctrl + S, so friends can use my vim
map <C-s> :w<enter>

" I type to fast, so :W becomes :w
command WQ wq
command Wq wq
command W w
command Q q


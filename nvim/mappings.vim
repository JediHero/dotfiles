" LEADER MAPPINGS
" -----------------------------------------------------------------------------
let g:mapleader = " "

" Use Leader + hjkl to resize windows
nnoremap <leader>j  :resize -5<CR>
nnoremap <leader>k  :resize +5<CR>
nnoremap <leader>h  :vertical resize -5<CR>
nnoremap <leader>l  :vertical resize +5<CR>

" All windows same size
nnoremap <silent> <leader>= <C-w>=

" ???
nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Nerdtree Mirror the NERDTree before showing it. This makes it the same on all tabs.
nnoremap <leader>n :NERDTreeMirror<CR>:NERDTreeToggle<CR>

" Splits
nnoremap <silent> <leader>s :split<CR>
nnoremap <silent> <leader>v :vsplit<CR>
nnoremap <silent> <leader>ts :term<CR>
nnoremap <silent> <leader>tv :vsplit<CR>:term<CR>

nnoremap <leader>pe :w<CR>:vertical terminal python3 %<CR>
nnoremap <leader>pr :w<CR>:vertical terminal bash python3<CR>

" nvim-ipy
nnoremap <silent> <leader>c <Plug>(IPy-RunCell)
nnoremap <silent> <leader>x <Plug>(IPy-Terminate)



" NON LEADER MAPPINGS
" -----------------------------------------------------------------------------
" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" fuzzy searching
nnoremap <C-p> :<C-u>FZF<CR>

" terminal mode escape
if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <C-v><Esc> <Esc>
endif

" Open NERDTree
" nnoremap <S-n> :NERDTreeToggle<CR>

" Easyalign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Copy to end of line - Y to work as D and C work
nnoremap <S-y> y$

" Terminal escape
tnoremap <C-[> <C-\><C-n>

" Shift selction up and down
vnoremap m :m '>+1<CR>gv=gv
vnoremap M :m '<-2<CR>gv=gv


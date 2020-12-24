" Copy to end of line
nnoremap <S-y> y$

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use Leader + hjkl to resize windows
nnoremap <leader>j  :resize -5<CR>
nnoremap <leader>k  :resize +5<CR>
nnoremap <leader>h  :vertical resize -5<CR>
nnoremap <leader>l  :vertical resize +5<CR>
nnoremap <leader>J  :resize -10<CR>
nnoremap <leader>K  :resize +10<CR>
nnoremap <leader>H  :vertical resize -10<CR>
nnoremap <leader>L  :vertical resize +10<CR>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
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

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Nerdtree Mirror the NERDTree before showing it. This makes it the same on all tabs.
nnoremap <S-n> :NERDTreeMirror<CR>:NERDTreeToggle<CR>

" fuzzy searching
nnoremap <C-p> :<C-u>FZF<CR>

" terminal mode escape
if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <C-v><Esc> <Esc>
endif

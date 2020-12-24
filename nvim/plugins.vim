" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'https://github.com/preservim/nerdtree'            " File Explorer
    Plug 'https://github.com/wellle/targets.vim'            " Adds more text objects
    Plug 'https://github.com/machakann/vim-sandwich'        " Allows addition or replacement of (){}[] and quotes
    " Plug 'https://github.com/szymonmaszke/vimpyter'         " Edit a notebook from nvim
    Plug 'https://github.com/junegunn/vim-peekaboo'         " Shows contents of registers
    Plug 'https://github.com/tpope/vim-commentary'          " Toggle comments
    Plug 'https://github.com/junegunn/vim-easy-align'       " Align text
    Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy file searching
    Plug 'https://github.com/junegunn/fzf.vim'              " Common fzf commands
    Plug 'https://github.com/tpope/vim-obsession'           " Automatically save vim sessions
    " Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Colorschemes
    Plug 'https://github.com/morhetz/gruvbox'               " Gruvbox

call plug#end()

" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

" Start NERDTree when Vim starts with a directory argument.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
"     \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Close NERDTree on file open
let NERDTreeQuitOnOpen=1

" Set colors
colorscheme gruvbox

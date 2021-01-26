" -----------------------------------------------------------------------------
" auto-install vim-plug
" -----------------------------------------------------------------------------
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'https://github.com/preservim/nerdtree'                           " File Explorer
    Plug 'https://github.com/wellle/targets.vim'                           " Adds more text objects
    Plug 'https://github.com/machakann/vim-sandwich'                       " Allows addition or replacement of (){}[] and quotes
    Plug 'https://github.com/junegunn/vim-peekaboo'                        " Shows contents of registers
    Plug 'https://github.com/tpope/vim-commentary'                         " Toggle comments
    Plug 'https://github.com/junegunn/vim-easy-align'                      " Align text
    Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy file searching
    Plug 'https://github.com/junegunn/fzf.vim'                             " Common fzf commands
    Plug 'https://github.com/tpope/vim-obsession'                          " Automatically save vim sessions
    Plug 'https://github.com/morhetz/gruvbox'                              " Gruvbox
    Plug 'https://github.com/roman/golden-ratio'                           " Resizes screens automatically
    Plug 'https://github.com/ap/vim-buftabline'                            " Creates a tab like interface for buffers
    Plug 'https://github.com/terryma/vim-multiple-cursors'                 " Sublime text multiple cursor type functionality
    Plug 'https://github.com/plasticboy/vim-markdown'                      " Basic markdown support
    Plug 'https://github.com/godlygeek/tabular'                            " Needed for vim-markdown
    Plug 'https://github.com/dkarter/bullets.vim'                          " Auto creating bullets in markdown or other filetypes
    Plug 'https://github.com/bfredl/nvim-ipy'                              " Two-way integration between Vim and IPython
    " Plug 'https://github.com/szymonmaszke/vimpyter'                        " Edit a notebook from nvim
    " Plug 'https://github.com/rafi/awesome-vim-colorschemes'                " Colorschemes
    " Plug 'https://github.com/liuchengxu/vim-which-key'                     " Visual representation of leader keys

call plug#end()

" -----------------------------------------------------------------------------
" Nerd Tree
" -----------------------------------------------------------------------------
" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif

" Start NERDTree when Vim starts with a directory argument.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
"     \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

let NERDTreeShowHidden=1 "Always show dot (hidden) files
let NERDTreeQuitOnOpen=1 "Close the NERDTree after opening a file
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" -----------------------------------------------------------------------------
" Colorscheme
" -----------------------------------------------------------------------------
" Set colors
colorscheme gruvbox

" -----------------------------------------------------------------------------
" vim-markdown
" -----------------------------------------------------------------------------
let g:vim_markdown_fenced_languages =[
    \ 'python=.py', 
    \ 'bash=sh', 
    \ 'ini=dowini'
    \ ]

" let g:vim_markdown_conceal
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_no_extensions_in_markdown = 0
let g:im_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'

" -----------------------------------------------------------------------------
" bullets
" -----------------------------------------------------------------------------
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'python'
    \]


" -----------------------------------------------------------------------------
" nvim-ipy
" -----------------------------------------------------------------------------
let g:nvim_ipy_perform_mappings = 0
let g:ipy_celldef = '# %%'

" =============================================================================
" SETTINGS
" =============================================================================

" No VI
set nocompatible

" Tabs and indents
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start

" Visual settings
set mouse=a                             " Enable your mouse
set iskeyword+=-                      	" treat dash separated words as a word text object"
set cmdheight=2                         " More space for displaying messages
set ruler              			        " Show the cursor position all the time
set clipboard=unnamedplus               " Copy paste between vim and everything else
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set background=dark                     " tell vim what the background color looks like
set textwidth=80                        " Set width of text
highlight ColorColumn ctermbg=darkgrey guibg=darkgrey " Set highlight color
set colorcolumn=+1                      " Highlight column after textwidth
syntax on
set laststatus=0                        " Always display the status line
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set ignorecase
set hidden
set ignorecase
set noerrorbells
set scrolloff=8
set signcolumn=yes
set foldenable
set conceallevel=2
set title
set termguicolors                       " Set colors right
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set formatoptions-=cro                  " Stop newline continution of comments

" Line numbering
set number
set relativenumber

" Directories for swp files
set nobackup 
set noswapfile                          " Disable swap file creation
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms

" Windows 
set splitbelow
set splitright

" displays tabs with :set list & displays when a line runs off-screen
set listchars=tab:<.,trail:.,precedes:<,extends:>
set list

" File Settings
set encoding=utf8
set undodir=~/.vim_runtime/undodir
set undofile

" Searching and patterns
set ignorecase
set smartcase
set smarttab
set incsearch

" =============================================================================
" Filetype settings
" =============================================================================

" Markdown
au FileType *.md expandtab shiftwidth=2 tabstop=2 smartindent

" Python
" -----------------------------------------------------------------------------
"au BufRead *.py compiler nose
au FileType python set omnifunc=pythoncomplete#Complete
au FileType python setlocal expandtab shiftwidth=4 tabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
au BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
au BufWritePre *.py %s/\s\+$//e
au FileType python set foldmethod=indent foldlevel=99

""rope options
"map <leader>j :RopeGotoDefinition<CR>
"map <leader>r :RopeRename<CR>

" " Don't let pyflakes use the quickfix window
" let g:pyflakes_use_quickfix = 0

" " Run pyflake8
" autocmd FileType python map <Leader>8 :call Flake8()<CR>
" " Run when saving py files
" autocmd BufWritePost *.py call Flake8()
" " Ignore Errors
" let g:flake8_ignore="E501,W293"

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

" Add the virtualenv's site-packages to vim path
if has('python')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

" Load up virtualenv's vimrc if it exists
if filereadable($VIRTUAL_ENV . '/.vimrc')
    source $VIRTUAL_ENV/.vimrc
endif

syntax on               " Highlight syntax
set number              " Show absolute line number
set relativenumber      " Show relative line numbers
set hlsearch            " Highlight all search results (:noh to stop highlighting)
set ignorecase          " Ignore case in search
set incsearch           " Show search results as you type
set nowrap              " Don't wrap lines
let g:netrw_liststyle=3 " Show file structure as tree in netrw
let g:netrw_banner=0    " Remove banner in netrw
colorscheme desert      " Other good options: koehler, slate
filetype plugin indent on
set tabstop=4           " Display existing tabs with a width of 4 spaces
set shiftwidth=4        " When indenting with '>', use 4 spaces
set expandtab           " Insert 4 spaces when tab is pressed instead of tab
set autochdir           " Current directory changes based on the current file
set synmaxcol=0         " Without this setting, syntax highlighting stops after column 3000

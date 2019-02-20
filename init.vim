set encoding=utf-8
set number
set mouse=a
""" Tabs #tabs
" - Two spaces wide
set tabstop=2
set softtabstop=2
"   " - Expand them all
set expandtab
"   " - Indent by 2 spaces by default
set shiftwidth=2
"   " turn off mouse
set mouse=""
""" Leader #leader
let g:mapleader='\\'
"" Format Options #format-options
set formatoptions=tcrq
set textwidth=80

"" Libraries
call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'prettier/vim-prettier'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
call plug#end()

" Config vim-prettier
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0
autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"Config NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"Config Deoplete
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = 'C:\Users\Kokjtu\AppData\Local\Programs\Python\Python37-32\python.exe'

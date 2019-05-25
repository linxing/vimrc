" Configuration file for vim
set modelines=0
set autoread
set backspace=2
colorscheme dracula
syntax enable
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1
" Basic Config
set tabstop=4
set showmatch
set ruler
set cursorline
" #set number
set relativenumber
set laststatus=2
" Turn on the wid menu
set wildmenu

" Pluging
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

" Set lightline.vim theme
let g:lightline = { 'colorscheme': 'one', }
autocmd vimenter * NERDTree

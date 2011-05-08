set nocompatible

set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set nu                  " Enable Line Numbering
set showcmd             " display incomplete commands

set incsearch           " do incremental searching
set hlsearch            " switch on highlighting the last used search pattern
set smartcase           " use case-sensitive search when upper case in search string
set ignorecase          " ignore case while searching (if not using upper case)

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

set guifont=Courier_New:h9
set backupdir=~/.vimbackup
set background=dark
colorscheme molokai

set t_Co=256

call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on
autocmd FileType text setlocal textwidth=78

" When editing a file, always jump to the last known cursor position.
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif


" Taglist config
let Tlist_Inc_Winwidth = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Process_File_Always = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Use_Right_Window=1
let Tlist_Auto_Update=1
let Tlist_Highlight_Tag_On_BufEnter=1
let Tlist_Show_One_File=1
let tlist_php_settings = 'php;c:class;d:constant;f:function'
let tlist_planr_settings = 'planr;h:heading'
nmap <silent> <F2> :TlistToggle<CR>
"autocmd FileType php :TlistToggle

" NERDTree config
nmap <silent> <F3> :NERDTreeToggle<CR>

" Better mapping for next/prev tabs
map <silent><A-Right> :tabnext<CR>
map <silent><A-Left> :tabprevious<CR>

" custom filetypes
au BufRead,BufNewFile *.plan set filetype=planr

command! -nargs=0 -bar Todo
    \ exe "edit c:\\projects\\engagor\\todo.plan" |
    \ exe "NERDTreeToggle c:\\projects\\engagor" |
    \ exe "TlistOpen" |
    \ exe "2wincmd w"

command! -nargs=0 -bar Projects
    \ exe "edit /home/folke/notes/projects.plan" |
    \ exe "NERDTreeToggle /home/folke/notes" |
    \ exe "TlistOpen" |
    \ exe "2wincmd w"


set splitright

let g:changelog_username="Folke Lemaitre <folke@engagor.com>"
runtime ftplugin/changelog.vim

au FileType html,xhtml setlocal indentexpr= 
au FileType html,xhtml setlocal autoindent
au FileType html,xhtml setlocal smartindent

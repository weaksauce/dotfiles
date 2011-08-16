set nocompatible

set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set nu                  " Enable Line Numbering
set showcmd             " display incomplete commands
set hidden
set tags+=tags;/

set incsearch           " do incremental searching
set hlsearch            " switch on highlighting the last used search pattern
set smartcase           " use case-sensitive search when upper case in search string
set ignorecase          " ignore case while searching (if not using upper case)

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smarttab
set showmatch

set guifont=Courier_New:h9
set backupdir=~/.vimbackup
set background=dark
let mapleader = ","
"set mouse=a
set wildignore=.git,.svn
"colorscheme molokai
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
colorscheme railscasts


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
let Tlist_Process_File_Always = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Auto_Update=1
let Tlist_Highlight_Tag_On_BufEnter=1
let Tlist_Show_One_File=1
let Tlist_Sort_Type = "name"
let tlist_php_settings = 'php;c:class;d:constant;f:function'
let tlist_planr_settings = 'planr;h:heading'
let Tlist_Show_Menu=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Close_On_Select=1
let Tlist_Compact_Format=1

" pasting that doesnt suck
imap <D-v> <C-O>:set paste<CR><C-r>*<C-O>:set nopaste<CR>


" custom filetypes
au BufRead,BufNewFile *.plan set filetype=planr
au BufRead,BufNewFile *.todo set filetype=planr
au BufRead,BufNewFile *.json set filetype=json
au BufRead,BufNewFile *.md set filetype=markdown

set splitright

let g:changelog_username="Folke Lemaitre <folke@engagor.com>"
runtime ftplugin/changelog.vim

au FileType html,xhtml setlocal indentexpr= 
au FileType html,xhtml setlocal autoindent
au FileType html,xhtml setlocal smartindent
au FileType css,scss ColorHighlight

filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP
au FileType php set keywordprg=pman
let php_sql_query=1                                                                                        
let php_htmlInStrings=1
set completeopt=longest,menuone,preview
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <C-Space> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

imap <C-@> <C-Space>

let g:user_zen_expandabbr_key = '<C-e>'
let g:use_zen_complete_tag = 1

map <leader>s :!./sync<CR>
se switchbuf=useopen
map <silent><S-right>   :bn<cr>
map <silent><S-left>    :bp<cr>
imap <silent><S-right>   <esc>:bn<cr>
imap <silent><S-left>    <esc>:bp<cr>
let g:miniBufExplShowBufNumbers = 0
let g:miniBufExplForceSyntaxEnable = 0
let g:miniBufExplorerMoreThanOne=0

nmap <silent> <leader>r :TlistToggle<CR>
"nmap <unique> <silent> <Leader>t :tabnew<CR>:CommandT<CR>
map <leader>f :Ack<space>
"nmap <silent> <leader>b :NERDTreeToggle<CR>

function! CleverTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
      return "\<Tab>"
   else
      return "\<C-X>\<C-O>"
   endif
endfunction

command! FixNewLines :%s//\r/g
"inoremap <Tab> <C-R>=CleverTab()<CR>
"
"
cmap w!! %!sudo tee > /dev/null %
colorscheme molokai

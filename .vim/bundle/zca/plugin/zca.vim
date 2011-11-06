if !exists("g:zcaprg")
    let g:zcaprg="ZendCodeAnalyzer"
endif

function! s:ZendCodeAnalyzer()
    redraw

    let makeprg_bak=&makeprg
    let errorformat_bak=&errorformat
    try
        let &makeprg=g:zcaprg . " ".shellescape(expand('%')) . " 2>&1 \\\| grep -v 'Zend Code Analyzer' \\\| grep -v '^Analyzing'"
        let &errorformat='%f(line\ %l):\ %m'
        silent execute "make"
    finally
        let &makeprg=makeprg_bak
        let &errorformat=errorformat_bak
    endtry

    botright copen

    redraw!
endfunction

command! -bang -nargs=* -complete=file ZendCodeAnalyzer call s:ZendCodeAnalyzer()
map <leader>z :ZendCodeAnalyzer<CR>

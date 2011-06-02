
if exists("b:current_syntax")
  finish
endif

syn case ignore

syn match planrTag "[@#]\w*"
syn match planrPrio "\$\d*\.*\d*"
syn match planrDate "{.*}" contains=planrError
syn match planrComment "(.*)"
syn match planrError "{error:.*}"
syn match listElement "^\s*[*+-]"
syn match planrHeading "^\s*\[.*\].*" contains=planrTag,planrDate,planrError,planrComment,planrPrio
syn match statusActive "^\s*\[[ _]\{0,1\}\].*" contains=planrTag,planrDate,planrError,planrComment,planrPrio
syn match statusCompleted "^\s*\[[x]\].*" contains=planrTag,planrDate,planrError,planrComment,planrPrio

syn case match

hi link statusActive String
hi link statusCompleted PreProc
hi link planrTag Type
hi link planrDate Special
hi link listElement Constant
hi link planrPrio Constant
hi link planrError Error
hi link planrComment Comment
hi link planrHeading Identifier

" Syntax Folding
setlocal foldmethod=expr
setlocal foldexpr=GetPlanrFold(v:lnum)
setlocal foldlevel=10
setlocal formatoptions=tcqro
"setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal comments=b:-,b:*,b:[\ ],b:[x]

" some tab key remapping
" map <buffer><silent><tab> <Esc><S-v><S->>
" map <buffer><silent><S-tab> <Esc><S-v><S-<>
" map! <buffer><silent><tab> <Esc><S-v><S->><S-a> 
" map! <buffer><silent><S-tab> <Esc><S-v><S-<><S-a> 

function! GetPlanrFold(lnum)
    let line = getline(a:lnum)
    let ind  = indent(a:lnum)

    " Ignore blank lines
    if line =~ '^\s*$'
	    return "="
    endif

    let pnum = prevnonblank(a:lnum - 1)

    " The end of a fold is determined through a difference in indentation
    " between this line and the next.
    " So first look for next line
    let nnum = nextnonblank(a:lnum + 1)
    if nnum == 0
	    return "="
    endif

    " If next line has less indentation we end a fold.
    " This ends folds that aren't there a lot of the time, and this sometimes
    " confuses vim.  Luckily only rarely.
    let nind = indent(nnum)
    let pind = indent(pnum)
    if nind > ind
	    return ">" . (ind / &sw + 1)
    elseif nind < ind
        return "<" . (nind / &sw + 1)
    endif

    " If none of the above apply, keep the indentation
    return "="
endfunction

set autoindent
let b:current_syntax = "planr"

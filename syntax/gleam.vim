if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

let b:current_syntax = "gleam"

" Keywords
syntax keyword gleamKeyword match mod type
highlight link gleamKeyword Keyword

" Function definition
syn match gleamDef '\<let\>\(:\)\@!' nextgroup=gleamFunctionDef skipwhite skipnl
syn match gleamDef '\<pub\>\(:\)\@!' nextgroup=gleamFunctionDef skipwhite skipnl
highlight link gleamDef Keyword

syn match gleamSig '\<sig\>\(:\)\@!' nextgroup=gleamFunctionDef skipwhite skipnl
highlight link gleamSig Keyword

syn match  gleamFunctionDef "[^[:space:];#<,()\[\]]\+" contained skipwhite skipnl
hi def link gleamFunctionDef Function

" Numbers
syntax match gleamNumber "\v(\d+)"
syntax match gleamNumber "\v(\d+)\.(\d+)"
hi def link gleamNumber Number

" Atoms
syntax match gleamAtom ":[a-z][a-zA-Z_0-9]*"
syntax keyword gleamAtom true false
highlight link gleamAtom Constant

" Operators
syn match gleamOperator "\([-!#$%`&\*\+./<=>\?@\\^|~:]\|\<\>\)"
hi def link gleamOperator Operator

syn match gleamType '\([a-z]\)\@<![A-Z]\w*'
hi def link gleamType Identifier

" Comments
syn region gleamCommentLine start="//" end="$" contains=gleamTodo
hi def link gleamCommentLine   Comment

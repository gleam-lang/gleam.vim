if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

let b:current_syntax = "gleam"

" Keywords
syntax keyword gleamKeyword
	\ module export from import
	\ type alias
	\ case cond
	\ foreign
	\ spec doc nodoc
	\ send receive after
highlight link gleamKeyword Keyword

" Function definition
syn match gleamDef "fn" nextgroup=gleamFunctionDef skipwhite skipnl
syn match gleamDef "test" nextgroup=gleamFunctionDef skipwhite skipnl
syn match gleamDef "const" nextgroup=gleamFunctionDef skipwhite skipnl
highlight link gleamDef Keyword

syn match gleamFunctionDef "[a-z_-][A-Za-z_-]*" contained skipwhite skipnl
highlight link gleamFunctionDef Function

" Numbers
syntax match gleamNumber "\v(\d+)"
syntax match gleamNumber "\v(\d+)\.(\d+)"
highlight link gleamNumber Number

" Operators
syn match gleamOperator "\([-!#$%`&\*\+./<=>@\\^|~:]\|\<\>\)"
highlight link gleamOperator Operator

" Atoms
syntax match gleamAtom ":[a-z][a-zA-Z_0-9]*"
syntax region gleamAtom start=/\v:"/ skip=/\v\\./ end=/\v"/
highlight link gleamAtom Constant

" Type
syn match gleamType "\([a-z]\)\@<![A-Z]\w*"
highlight link gleamType Identifier

" Comments
syn region gleamCommentLine start="//" end="$" contains=gleamTodo
highlight link gleamCommentLine Comment

" String
syntax region gleamString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link gleamString String

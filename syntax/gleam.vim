if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

let b:current_syntax = "gleam"

" Keywords
syntax keyword gleamKeyword
	\ module import pub external
	\ type alias enum let as
	\ case assert struct
  \ trait implement derive where
highlight link gleamKeyword Keyword

" Function definition
syntax keyword gleamDef fn nextgroup=gleamFunctionDef skipwhite skipempty
highlight link gleamDef Keyword

syntax match gleamFunctionDef "[a-z_-][0-9a-z_-]*" contained skipwhite skipnl
highlight link gleamFunctionDef Function

" Numbers
syntax match gleamNumber "\v(\d+)"
syntax match gleamNumber "\v(\d+)\.(\d+)"
highlight link gleamNumber Number

" Operators
syntax match gleamOperator "\([-!#$%`&\*\+./<=>@\\^|~:]\|\<\>\)"
highlight link gleamOperator Operator

" Type
syntax match gleamType "\([a-z]\)\@<![A-Z]\w*"
highlight link gleamType Identifier

" Comments
syntax region gleamCommentLine start="//" end="$" contains=gleamTodo
highlight link gleamCommentLine Comment

syntax keyword gleamTodo contained TODO FIXME XXX NB NOTE
highlight def link rustTodo Todo

" String
syntax region gleamString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link gleamString String

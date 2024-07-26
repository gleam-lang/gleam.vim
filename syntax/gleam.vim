if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

let b:current_syntax = "gleam"

" Keywords
syntax keyword gleamKeyword
  \ import pub panic use type let as if else todo const case assert try opaque
highlight link gleamKeyword Keyword

" Function definition
syntax keyword gleamDef fn nextgroup=gleamFunctionDef skipwhite skipempty
highlight link gleamDef Keyword

syntax match gleamFunctionDef "[a-z][a-z0-9_]*\ze\s*(" skipwhite skipnl
highlight link gleamFunctionDef Function
highlight link gleamFunctionDef Function

" Number
"" Int
syntax match gleamInt '\<\d[0-9_]*\>'
highlight link gleamInt Number

"" Binary
syntax match gleamBinary '\<0[bB][01]+\>'
highlight link gleamBinary Number

"" Octet
syntax match gleamOctet '\<0[oO][0-7]+\>'
highlight link gleamOctet Number

"" Hexadecimal
syntax match gleamHexa '\<0[xX]\x+\>'
highlight link gleamHexa Number

"" Float
syntax match gleamFloat '\d\(_\=\d\)*\.\(e-\=\d\)\=[0-9_]*'
highlight link gleamFloat Float

" Operators
"" Basic
syntax match gleamOperator "[-+/*]\.\=\|[%=]"
highlight link gleamOperator Operator

"" Arrows + Pipeline
syntax match gleamOperator "<-\|[-|]>"
highlight link gleamOperator Operator

"" Bool
syntax match gleamOperator "&&\|||"
highlight link gleamOperator Operator

"" Comparison
syntax match gleamOperator "[<>]=\=\.\=\|[=!]="
highlight link gleamOperator Operator

"" Misc
syntax match gleamOperator "\.\.\|<>\||"
highlight link gleamOperator Operator

" Values
syntax keyword gleamValues True False Nil
highlight def link gleamValues Boolean

" Type
syntax match gleamType "\<[A-Z][a-zA-Z0-9]*\>"
highlight link gleamType Identifier

" Comments
syntax region gleamCommentLine start="//" end="$" contains=gleamTodo
highlight link gleamCommentLine Comment

syntax keyword gleamTodo contained TODO FIXME XXX NB NOTE
highlight def link gleamTodo Todo

" String
syntax region gleamString start=/"/ end=/"/ contains=gleamStringModifier
syntax match gleamStringModifier '\\.' contained
highlight link gleamString String
highlight link gleamStringModifier Special

" Attribute
syntax match gleamAttribute "@\(external\|deprecated\|target\)"
highlight link gleamAttribute PreProc

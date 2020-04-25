if exists('current_compiler')
    finish
endif

let current_compiler = "gleam"

CompilerSet makeprg=gleam\ $*

" Written with the help of: https://flukus.github.io/vim-errorformat-demystified.html
"
let &efm='%Eerror: %m,'                   " use 'error:' to indicate the start of a new error
let &efm.='%C %#┌── %f:%l:%c ───,'        " pull out the file, line & column
let &efm.='%C,'                           " allow empty lines within an error
let &efm.='%C%.%#│%.%#,'                  " ignore any line with a vertial formatting pipe in it
let &efm.='%Z%m'                          " assume any other line contributes to the error message


" Example error message
"
" error: Syntax error
"
"    ┌── /home/michael/root/projects/gleam-phoenix-mix/src/page_controller.gleam:7:27 ───
"    │
"  7 │ pub fn index(my_conn: connConn) -> conn.Conn {
"    │                           ^^^^ Unexpected token
"    │
"
" Expected one of ")", ",", ".", "=", "external", "fn", "import", "pub", "type", "{"

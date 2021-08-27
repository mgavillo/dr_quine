; Commentaire hors programme
section .data
_str: db "; Commentaire hors programme%2$csection .data%2$c_str: db %3$c%1$s%3$c, 0%2$csection .text%2$cglobal fun%2$cglobal main%2$cextern printf%2$cfun:%2$cret%2$cmain:%2$c; Commentaire main%2$cpush rbp%2$cmov rbp, rsp%2$clea rdi, [rel _str]%2$clea rsi, [rel _str]%2$cmov rdx, 10%2$cmov rcx, 34%2$ccall printf%2$ccall fun%2$cleave%2$cret", 0
section .text
global fun
global main
extern printf
fun:
ret
main:
; Commentaire main
push rbp
mov rbp, rsp
lea rdi, [rel _str]
lea rsi, [rel _str]
mov rdx, 10
mov rcx, 34
call printf
call fun
leave
ret
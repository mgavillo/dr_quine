%macro OPEN 0
	lea rdi, [rel file]
	mov rsi, mode
	call fopen
%endmacro

%macro PRINT 0
	mov rdi, rax
	lea rsi, [rel str]
	lea rdx, [rel str]
	mov rcx, 10
	mov r8, 37
	mov r9, 9
	mov r10, 34
	call fprintf
%endmacro

%macro FUN 0
	section .data
	str: db `%3$cmacro OPEN 0%2$c%4$clea rdi, [rel file]%2$c%4$cmov rsi, mode%2$c%4$ccall fopen%2$c%3$cendmacro%2$c%2$c%3$cmacro PRINT 0%2$c%4$cmov rdi, rax%2$c%4$clea rsi, [rel str]%2$c%4$clea rdx, [rel str]%2$c%4$cmov rcx, 10%2$c%4$cmov r8, 37%2$c%4$cmov r9, 9%2$c%4$cmov r10, 34%2$c%4$ccall fprintf%2$c%3$cendmacro%2$c%2$c%3$cmacro FUN 0%2$c%4$csection .data%2$c%4$cstr: db %5$c%1$s%5$c, 0%2$c%4$cfile: db %5$cGrace_kid.s%5$c, 0%2$c%4$cmode: db %5$cw%5$c, 0%2$c%2$c%4$csection .text%2$c%4$cglobal main%2$c%4$cextern fprintf, fopen%2$c%4$cmain:%2$c%4$c%4$cpush rbp%2$c%4$c%4$cmov rbp, rsp%2$c%4$c%4$cOPEN%2$c%4$c%4$cPRINT%2$c%4$c%4$cleave%2$c%4$c%4$cret%2$c%3$cendmacro%2$cFUN%2$c`, 0
	file: db `Grace_kid.s`, 0
	mode: db `w`, 0

	section .text
	global main
	extern fprintf, fopen
	main:
		push rbp
		mov rbp, rsp
		OPEN
		PRINT
		leave
		ret
%endmacro
FUN

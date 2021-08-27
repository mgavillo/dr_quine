section .data
_str: db "section .data%2$c_str: db %4$c%1$s%4$c, 0%2$cfile: db %4$cSully_X.s%4$c, 0%2$cmode: db %4$cw%4$c, 0%2$cextern fprintf, fopen, fclose%2$cglobal main%2$c%2$csection .text%2$cmain:%2$c%3$cmov r14,%5$c%2$c%3$cjmp loop%2$c%2$cloop:%2$c%3$cmov r15, r14%2$c%3$cadd r15b, 48%2$c%3$cmov byte[file + 6], r15b%2$c%3$clea rdi, [rel file]%2$c%3$cmov rsi, mode%2$c%3$ccall fopen%2$c%3$cmov rdi, rax%2$c%3$cpush rdi%2$c%3$clea rsi, [rel _str]%2$c%3$clea rdx, [rel _str]%2$c%3$cmov rcx, 10%2$c%3$cmov r8, 9%2$c%3$cmov r9, 34%2$c%3$cmov rbx, r15%2$c%3$cpush rbx%2$c%3$cxor rax, rax%2$c%3$ccall fprintf%2$c%3$cpop rbx%2$c%3$cpop rdi%2$c%3$ccall fclose%2$c%3$ccmp r14, 0%2$c%3$cje exit%2$c%3$cdec r14%2$c%3$cjmp loop%2$c%2$cexit:%2$c%3$cret%2$c", 0
file: db "Sully_X.s", 0
mode: db "w", 0
extern fprintf, fopen, fclose
global main

section .text
main:
	mov r14,2
	jmp loop

loop:
	mov r15, r14
	add r15b, 48
	mov byte[file + 6], r15b
	lea rdi, [rel file]
	mov rsi, mode
	call fopen
	mov rdi, rax
	push rdi
	lea rsi, [rel _str]
	lea rdx, [rel _str]
	mov rcx, 10
	mov r8, 9
	mov r9, 34
	mov rbx, r15
	push rbx
	xor rax, rax
	call fprintf
	pop rbx
	pop rdi
	call fclose
	cmp r14, 0
	je exit
	dec r14
	jmp loop

exit:
	ret

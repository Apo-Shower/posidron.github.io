section .text

global _start

_start:
	jmp short gotocall

shellcode:
	pop ebx
	mov cx, 0x2F3
	mov al, 0x27
	int 0x80
	xor ebx, ebx
	mov al, 0x1
	int 0x80

gotocall:
	call shellcode
	db 'temporary'

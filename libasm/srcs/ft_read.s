%define sys_read 0x2000003 ;system call number for read

section .text
	global _ft_read
	extern ___error

_ft_read:
	xor rax, rax

.read:
	mov rax, sys_read
	syscall
	jc .error
	ret

.error:
	push rax
	call ___error
	pop rdx
	mov [rax], edx
	mov rax, -1
	ret
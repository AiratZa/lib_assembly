%define sys_write 0x2000004 ;system call number for write
section .text
	global _ft_write
	extern ___error

_ft_write:
	xor rax, rax

.write:
	mov rax, sys_write
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
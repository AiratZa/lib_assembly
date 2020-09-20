%define sys_write 0x2000004 ; system call number for write
section .text
	global _ft_write
	; ssize_t     ft_write(int fd, const void *buf, size_t count);
	;rax				rdi			rsi				rdx
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
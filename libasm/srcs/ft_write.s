section .text
global _ft_write

_ft_write:
	mov rax, rdi

.loop:
	cmp byte [rax], 0
	je .ret
	inc rax
	jmp .loop

.ret:
	sub rax, rdi
	ret
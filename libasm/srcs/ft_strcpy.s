section .text
global _ft_strcpy

_ft_strcpy:
	mov rax, rdi

.loop:
	cmp byte [rax], 0
	je .ret
	inc rax
	jmp .loop

.ret:
	sub rax, rdi
	ret
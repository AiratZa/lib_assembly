section .text
global _ft_strdup

_ft_strdup:
	mov rax, rdi

.loop:
	cmp byte [rax], 0
	je .ret
	inc rax
	jmp .loop

.ret:
	sub rax, rdi
	ret
section .text
global _ft_strlen

_ft_strlen:
	xor rax, rax

.next_iter:
	cmp [rdi], byte 0
	je .ret
	inc rax
	inc rdi
	jmp .next_iter

.ret:
	ret
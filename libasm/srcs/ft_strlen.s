section .text
global _ft_strlen

_ft_strlen:
	push rcx
	xor rcx, rcx

.next_iter:
	cmp [rdi], byte 0
	je .ret
	inc rcx
	inc rdi
	jmp .next_iter

.ret:
	mov rax, rcx
	pop rcx
	ret
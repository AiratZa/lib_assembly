section .text
	global _ft_strcmp

_ft_strcmp:
	xor rax, rax

.next_iter:
	mov al, byte [rdi]
	mov dl, byte [rsi]
	sub rax, rdx
	jnz .end
	cmp dl, 0
	je	.end
	inc rdi
	inc rsi
	jmp .next_iter

.end:
	ret
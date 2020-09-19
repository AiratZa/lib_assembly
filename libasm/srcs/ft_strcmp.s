section .text
	global _ft_strcmp

_ft_strcmp:
	push rdx
	xor rax, rax
	xor rdx, rdx

.next_iter:
	mov al, byte [rdi]
	mov dl, byte [rsi]
	sub rax, rdx
	jnz .ret
	cmp dl, 0
	je	.ret
	inc rdi
	inc rsi
	jmp .next_iter

.ret:
	pop rdx
	ret
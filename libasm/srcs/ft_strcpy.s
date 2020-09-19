section .text
	global _ft_strcpy

_ft_strcpy:
	mov rax, rdi

.next_iter:
	mov dl, byte [rsi]
	mov byte [rdi], dl
	cmp dl, 0
	je .ret
	inc rdi
	inc rsi
	jmp .next_iter

.ret:
	ret
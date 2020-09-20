section .text
	global _ft_strdup
	; char        *ft_strdup(const char *s1);
	; rax						rdi
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc

_ft_strdup:
	xor rax, rax

.count:
	push rdi ; save str for dup in stack
	call _ft_strlen
	mov rdi, rax ; put len of str in register rdi for malloc
	inc rdi ; dont forget about '\0' at the end of line
	call _malloc
	cmp rax, 0
	je .end ; if malloc returned NULL, allocation is failed
	pop rsi ; get back our str
	mov rdi, rax ; put our allocated free space for strcpy
	call _ft_strcpy ; copy to dest from source str
	ret

.end:
	ret
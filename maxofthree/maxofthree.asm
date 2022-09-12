; ---------------
; A 64-bit program returning the maximum value of three 64-bit integers args
;
; ---------------
	global	maxofthree
	section	.text
maxofthree:
	mov	rax, rdi	; result (rax) initially holds x
	cmp	rax, rsi	; is x less than y?
	cmovl	rax, rsi	; if so, set result to y
	cmp	rax, rdx	; is max(x,y) less then z?
	cmovl	rax, rdx	; if so, set result to z
	ret			; the max will be in rax

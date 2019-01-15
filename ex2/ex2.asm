;initialize data section
section	.data
	; Define constant
	num1:	equ	200
	num2:	equ	50
	; initialize message
	msg:	db 	"Sum is correct\n"

section	.text

	global	_start

;; entry point
_start:
	; set num1's value to rax
	mov rax, num1
	; set num2's value to rbx
	mov rbx, num2
	; get sum of rax and rbx, and store its value in rax
	add rax, rbx
	; compare rax and 150
	cmp rax, 150
	; go to .exit lable if rax and 150 are not equal
	jne .exit
	; go to .rightSum label if rax and 150 are equal
	jmp .rightSum

; Print message that sum is correct
.rightSum:
	;; write syscall
	mov rax, 1
	;; file descriptor, standard output
	mov rdi, 1
	;; message address
	mov rsi, msg
	;; length of message
	mov rdx, 15
	;; call write syscall
	syscall
	; exit from program
	jmp .exit

; exit procedure
.exit:
	; exit syscall
	mov rax, 60
	; exit code
	mov rdi, 0
	; call exit syscall
	syscall


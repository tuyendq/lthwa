@ Input some charaters and print to stdout
@ Compile with 'as' on Pi 2

.global	_start
_start:
	MOV R7, #3		@ system call to stdin: 3
	MOV R0, #0		@ stdin file descriptor: 0
	MOV R2, #10		@ length of input
	LDR R1, =message	@ R1: address of message
	SWI	0

_write:
	MOV R7, #4
	MOV R0, #1
	MOV R2, #5
	LDR R1, =message
	SWI 0


.end:
	MOV R7, #1
	SWI 0

.data			@ Data section
message:
	.ascii " " 

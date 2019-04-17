@ Hello Assembly on Raspberry Pi 2
.global	_start		@ Code section

_start:
	MOV R7, #4		@ system call 4: print to stdout
	MOV R0,	#1		@ file descriptor 1 : stdout
	MOV R2, #33		@ 33 bytes/characters
	LDR	R1, =message
	SWI	0

end:
	MOV	R7, #1
	SWI 0

.data				@ Data section
message:
	.ascii	"Hello Assembly on Raspberry Pi 2\n"

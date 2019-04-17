@ Practice Assemply on Raspberry Pi 2
@ Compile using GNU 'as' assembler

@ Using @ to comment
@ Start your code with .text

.text

.global _start		@ _start: is where you program starts

_start:
	MOV R0, #65	@ put 65 to R0 register - to stdout
	MOV R7, #1	@ put 1 to R7 register - to exit
@ Software Interrupt
SWI	0

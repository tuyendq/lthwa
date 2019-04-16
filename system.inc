; DO NOT delete or move this file
; Declare standard file descriptors
%define	stdin	0
%define stdout	1
%define stderr	2
; Create symbolic name for each system call
%define	SYS_nosys	0
%define SYS_exit	1
%define SYS_fork	2
%define SYS_read	3
%define SYS_write	4

; non-global procedure
section	.text
align	4
access.the.bsd.kernel
		int	80h
		ret

; Create a macro which takes one argument, the syscall number
%macro	system	1
		mov		eax, %1
		call	access.the.bsd.kernel
%endmacro
; Create macro for each syscal
%macro	sys.exit	0
		system	SYS_exit
%endmacro
%macro	sys.fork	0
		system	SYS_fork
%endmacro
%macro	sys.read	0
		system	SYS_read
%endmacro
%macro	sys.write	0
		system	SYS_write
%endmacro

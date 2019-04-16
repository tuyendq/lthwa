; Using nasm to compile
; system.inc file is in the same folder

%include	'system.inc'

section	.data
hello	db	'Hello, Assembly on FreeBSD with NASM', 0Ah
hbytes	equ	$-hello

section .text
global	_start
_start:
push	dword hbytes
push	dword hello
push	dword stdout
sys.write

push	dword 0
sys.exit

# *********************
# # Compile and link on FreeBSD 12.x 32-bit
# $ as -o hello.o hello.s
# # Link
# $ ld -o hello hello.o
# *********************
	.data				# Data section

msg:	.asciz "Hello, world.\n"	# The string to print
		len = . - msg - 1			# The length of the string.

		.text						# Code section
		.global _start

_start:								# Entry point
		pushl	$len				# Arg 3 to write: length of string.
		pushl	$msg				# Arg 2: pointer to string.
		pushl	$1					# Arg 1: file descriptor.
		movl	$4, %eax			# Write.
		call	do_syscall
		addl	$12, %esp			# Clean stack.

		pushl	$0					# Exit status.
		movl	$1, %eax			# Exit.
		call	do_syscall

do_syscall:
		int		$0x80				# Call kernel.
		ret

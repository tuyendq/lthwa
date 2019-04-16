# *********************
# # Compile
# $ as --64 -o hello.o hello.s
# # Link
# $ ld -o hello hello.o
# *********************
		.data						# Data section

msg:	.asciz "Hello, world.\n"	# The string to print
		len = . - msg - 1			# The length of the string.

		.text						# Code section
		.global _start

_start:								# Entry point
		pushq	$len				# Arg 3 to write: length of string.
		pushq	$msg				# Arg 2: pointer to string.
		pushq	$1					# Arg 1: file descriptor.
		movq	$4, %rax			# Write.
		call	do_syscall
		addq	$12, %rsp			# Clean stack.

		pushq	$0					# Exit status.
		movq	$1, %rax			# Exit.
		call	do_syscall

do_syscall:
		int		$0x80				# Call kernel.
		ret

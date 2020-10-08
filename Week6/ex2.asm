.data
	newline: .asciiz "\n"

.text
	li $s0, 0 # First number
	li $s1, 1 # Second number
	li $s2, 0 # Temp for sum
	li $s3, 0 # Iteration step
	
	# Output 0 - the first element
	li $v0,1
	li $a0,0
	syscall
	# Print new line
	li $v0, 4
	la $a0, newline
	syscall
	
Begin:
	
	# Compute new $s2 fib number
	move $s2, $s1
	add $s1, $s1, $s0
	move $s0, $s2
	
	# Output fib number
	li $v0,1
	move $a0,$s2
	syscall
	# Print new line
	li $v0, 4
	la $a0, newline
	syscall
	
	# Iteration Cycle check
	add $s3, $s3, 1
	beq $s3, 9, End # 9 is the number of fib numbers to print plus one (9 + 1)
	b Begin
	
End:

	# Exit
	li $v0, 10
	syscall
.data
	str: .asciiz "Thisstrinhave       five       words"

.text
	la $t0, str 	#string pointer
	li $t7, 1		#counter
	li $t6, 0		 #shift	
	lb $t5, 0($t0) 	#previous symbol
	loop:
		lb $t1, 0($t0)	
		addi $t0, $t0, 1
		beq $t5, ' ', increment
		add $t5, $t1, $zero	 
		bgtz $t1, loop
	quit:	
		li $v0, 1
		add $a0, $t7, $zero
		syscall 
		
	li $v0, 10
	syscall
	
	increment:
		beq $t1, ' ', loop
		beq $t1, $zero, quit 
		addi $t7, $t7, 1
		add $t5, $t1, $zero
		j loop

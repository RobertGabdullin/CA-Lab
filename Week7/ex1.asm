.text

li $v0, 5
syscall
move $t1, $v0
li $v0, 1

blt $t1, $0, condless 
beq $t1, $0, condequal
bgt $t1, $0, condmore
condless: 
li $a0, -1
syscall
b End

condequal: 
li $a0, 0
syscall
b End

condmore:
li $a0, 1
syscall
b End


End:
li $v0, 10
syscall


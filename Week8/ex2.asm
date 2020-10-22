.text

li $v0, 5
syscall

move $t0, $v0
move $a0, $zero
move $t1, $zero
li $t2, 1

f:

add $t1, $t1, $t2
add $a0, $a0, $t1

beq $t1, $t0 ans
bne $t1, $t0 f 
 
 
ans: 
li $v0, 1
syscall

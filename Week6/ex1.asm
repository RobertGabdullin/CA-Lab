.data
equation: .asciiz "(y * z^2)/f - q\n"
put_y: .asciiz "Enter Y: "
put_z: .asciiz "Enter Z: "
put_f: .asciiz "Enter F: "
put_q: .asciiz "Enter Q: "
.text

li $v0, 4
la $a0, equation
syscall


li $v0, 4
la $a0, put_y
syscall

li $v0, 5
syscall
move $t1, $v0


li $v0, 4
la $a0, put_z
syscall

li $v0, 5
syscall
move $t2, $v0


li $v0, 4
la $a0, put_f
syscall

li $v0, 5
syscall
move $t3, $v0


li $v0, 4
la $a0, put_q
syscall

li $v0, 5
syscall
move $t4, $v0


mul $t1, $t1, $t2
mul $t1, $t1, $t2
div $t1, $t3
mflo $t0
sub $t0, $t0, $t4


li $v0, 1
move $a0, $t0
syscall
li $v0, 10
syscall
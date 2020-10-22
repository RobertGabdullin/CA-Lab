.data 
e: .float 2.71828
pi: .float 3.1415

.text

j f

f:
l.s $f4, e
l.s $f6, pi
mul.s $f4, $f4, $f4
div.s $f12, $f4, $f6
li $v0, 2
syscall

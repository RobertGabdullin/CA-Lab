.data 
ThirtyTwo: .float 32.0
Five: .float 5.0
Nine: .float 9.0

.text
l.s $f4, ThirtyTwo
l.s $f6, Five
l.s $f8, Nine

li $v0, 6
syscall

sub.s $f4, $f0, $f4
mul.s $f4, $f4, $f6
div.s $f12, $f4, $f8

li $v0, 2
syscall   

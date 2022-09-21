main:
	li $v0,5
	syscall
	move $s1,$v0
	li $s0,1
while:
	mult $s0, $s1
	mflo $s0
	addi $s1,$s1,-1
	bnez $s1,while
print:
	li $v0,1
	move $a0,$s0
	syscall
end:
	li $v0,10
	syscall
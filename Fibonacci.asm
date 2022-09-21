main:
	li $v0,5
	syscall
	move $s2,$v0
	li $s0,1
	li $s1,1
	li $s3,0
while:
	add $s3,$s0,$s1
	move $s0,$s1
	move $s1, $s3
	
	addi $s2,$s2,-1
	bnez $s2,while
print:
	addi $s2,$s2,1
	li $v0,1
	move $a0,$s0
	syscall
end:
	li $v0,10
	syscall
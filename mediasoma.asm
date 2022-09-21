	.data
txterro:
	.asciiz "ERRO\n"
txtend:
	.asciiz "\n"
	.text
	.globl main
main:
	li $t0, 0 #soma
	li $t1, 0 #contador
	li $t2, -1 #cap com zero para determinar fim do programa

while:
	li $v0, 5
	syscall
	
	beq $v0, $t2, printasoma
	
	add $t0, $t0, $v0
	addi $t1, $t1, 1
	
	j while
	
printasoma:z
	li $v0, 1
	move $a0, $t0
	syscall

	#\n

checkdivzero:
	beqz $t1, erro

calcprintmedia:	
	div $t0, $t1
	li $v0, 1
	mflo $a0
	syscall

	#\n
	
	j end

erro:
	li $v0, 4
	la $a0,txterro
	syscall 
end:
	li $v0, 10
	syscall

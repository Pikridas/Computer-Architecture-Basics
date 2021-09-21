.data
	myArray: .word 1,15,0,-3,99,48,-17,-9,20,15
	newLine: .asciiz "\n"
.text

.globl main
main:
	addi $t1, $zero, 0
	addi $t3, $zero, 0
	while:	
		beq $t1, 40, exit
		
		lw $t2, myArray($t1)
		addi $t1, $t1, 4
		add $t3, $t3, $t2
		
		#prints the current element
		li $v0, 1
		move $a0, $t2
		syscall
		
		#prints newLine
		li $v0, 4
		la $a0, newLine
		syscall
		
		j while
			
	exit:
		li $v0, 1
		move $a0, $t3
		syscall
		
		li $v0, 10
		syscall

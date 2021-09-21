.data

str: .asciiz "DWSE MOU ENAN ARITHMO\n"
str1: .asciiz "GRAMMES: "
str2: .asciiz "STHLES: "

.text
.globl main
main:

li $v0, 4
la $a0, str
syscall

li $v0,5
syscall 

la $a1, ($v0)

li $v0, 4
la $a0, str
syscall

li $v0,5
syscall 

la $a2, ($v0)

li $t1, 0
la $t2, ($a1)

li $t4, 0
la $t5, ($a2)

li $v0, 4
la $a0, str1
syscall

li $v0, 1
la $a0, ($t2)
syscall

li $v0, 11
li $a0, '\n'
syscall

li $v0, 4
la $a0, str2
syscall

li $v0, 1
la $a0, ($t5)
syscall

li $v0, 11
li $a0, '\n'
syscall

bne $t1,$t2,grammes

# $t1, 0
# $t2, ($a1)
# $t3 0 h 1
 
# $t4, 0
# $t5, ($a2)
# $t6 0 h 1

grammes:
slt $t3,$t1,$t2
beqz $t3, exit
addi $t1,$t1,1
li $t4 0
li $v0, 11
li $a0,'\n'
syscall
bne $t1,$t2,sthles
sthles:
	slt $t6,$t4,$t5
	beqz $t6,grammes
	li $v0, 11
	li $a0,'*'
	syscall
	addi $t4,$t4,1
	bne $t4,$t5,sthles
	j grammes
exit:
li $v0,10
syscall

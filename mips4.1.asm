.data

str: .asciiz "DWSE MOU ENAN ARITHMO\n"
str1: .asciiz "NON ZERO\n"
str2: .asciiz "ZERO\n"
str3: .asciiz "THETIKOS\n"
str4: .asciiz "ARNITIKOS\n"
star: .asciiz "****\n"

.text
.globl main
main:

li $t4, 0
li $t5, 5

bne $t4,$t5,asterakia

asterakia:
slt $t3,$t4,$t5
beqz $t3,ask1
li $v0,4
la $a0,star
syscall
addi $t4,$t4,1
bne $t4,$t5,asterakia

ask1:
li $v0, 4
la $a0, str
syscall

li $v0, 5
syscall

move $a1, $v0

beqz $a1,zero

li $v0, 4
la $a0, str1
syscall 

slt $a2,$a1,$zero

beq $a2,1,less

li $v0, 4
la $a0, str3
syscall 

li $t1, 0
la $t2,($a1)

while:
slt $t3,$t2,$t1
beq $t2,$t1,exit
li $v0,11
li $a0,'*'
syscall
addi $t1,$t1,1
bne $t2,$t1,while

exit:
li $v0, 10
syscall

less:
li $v0, 4
la $a0, str4
syscall 

j exit

zero:
li $v0, 4
la $a0, str2
syscall 

j exit
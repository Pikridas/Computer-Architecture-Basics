.data 

str3: .asciiz "\nDWSE MOU ARITHMO\n"
str4: .asciiz "EDWSES TON ARITHMO: "
array2: .space 40

.text
.globl main
main:

#ASK5.5
la $s2,array2
li $t1, 0
li $t2, 0
li $t3, 0
li $t0, 0

ar:
li $v0,4
la $a0,str3
syscall

li $v0,12
syscall

beq $v0,'\n', print_ar

sw $v0, 0($s2)
addu $s2,$s2,4
addi $t1,$t1,1
j ar

print_ar:
li $t0,0
#addi $t1,$t1,1
mul $t3,$t1,4
sub $s2,$s2,$t3
li $v0,4
la $a0,str4
syscall

ar2:
beqz $t1,exit
lb  $t0, 0($s2)
li $v0,11
la $a0,($t0)
syscall
addu $s2,$s2,4
subi $t1,$t1,1
bnez $t1, ar2

exit:
li $v0,10
syscall

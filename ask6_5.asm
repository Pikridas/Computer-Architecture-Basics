.data

table: .ascii "0123456789ABCDEF"
str: .asciiz "DWSE MOU ARITHMO APO 0 EWS 255\n"
char: .asciiz "EDWSES TOYS ARITHMOUS: "

.text
.globl main
main:

li $v0,4
la $a0,str
syscall

li $v0,5
syscall

la $t0,($v0)
la $s0,table

srl $t2, $t0, 4

addu $t1,$s0,$t2

sll $t4, $t0, 28
srl $t5, $t4, 28
addu $t3, $s0, $t5

li $v0,4
la $a0,char
syscall

li $v0,11
lb $a0,($t1)
syscall

li $v0, 11
lb $a0, ($t3)
syscall 

li $v0,10
syscall

.data

table: .ascii "0123456789ABCDEF"
str: .asciiz "DWSE MOU ARITHMO APO 1 EWS 15\n"
char: .asciiz "EDWSES TON XARAKTHRA: "

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

addu $t1,$s0,$t0

li $v0,11
li $a0,'\n'
syscall

li $v0,4
la $a0,char
syscall

li $v0,11
lb $a0, ($t1)
syscall

li $v0,10
syscall 


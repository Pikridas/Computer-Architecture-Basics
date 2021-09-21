.data

PI1: .float 3.14
str1: .asciiz "EKTYPWSH FLOAT ARITHMOU\n"

keno: .asciiz "\n"

PI2: .double 3.14
str2: .asciiz "EKTYPWSH DOUBLE ARITHMOU\n"

.text
.globl main
main:

#FLOAT

li $v0,4
la $a0,str1
syscall 

li $v0,2
lwc1 $f12,PI1
syscall

#ALLAGH GRAMMHS

li $v0,4
la $a0,keno
syscall

#DOUBLE

li $v0,4
la $a0,str2
syscall 

li $v0,3
ldc1 $f12,PI2
syscall 

li $v0,10
syscall
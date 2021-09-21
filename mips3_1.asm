.data

keno: .asciiz "\n"
str1: .asciiz "HELLO WORLD!\n"
str2: .asciiz "TEI OF ATHENS\n"
number: .word 5
str3: .asciiz "DWSE MOU ENAN AKERAIO ARITHMO\n"
str4: .asciiz "DIAVASA TON ARITHMO: "
on1: .asciiz "DWSE MOU TO ONOMATEPWNUMO SOU\n"
on2: .asciiz "SE LENE: "
on3: .space 50

.text
.globl main
main:
#ask 3.A
li $a0,'a'
li $v0,11
syscall 

li $v0,4
la $a0,keno
syscall 

#ask 3.B
li $v0,11
li $a0,'a'
syscall 

li $v0,4
la $a0,keno
syscall 

li $v0,11
li $a0,'d'
syscall

li $v0,4
la $a0,keno
syscall

#ask 3.C
li $v0,4
la $a0,str1
syscall

#ask 3.D
li $v0,4
la $a0,str1
syscall

li $v0,4
la $a0,str2
syscall

#ask3.E
li $v0,1
lw $a0,number
syscall

li $v0,4
la $a0,keno
syscall

#ask3.F
li $v0,4
la $a0,str3
syscall

li $v0,5
syscall 

move $t0,$v0

li $v0,4
la $a0,str4
syscall

li $v0,1
la $a0,($t0)
syscall

li $v0,4
la $a0,keno
syscall

#ask3.G
li $v0,4
la $a0,on1
syscall

li $v0,8
la $a0,on3
li $a1, 50
syscall 

li $v0,4
la $a0,on2
syscall

li $v0,4
la $a0,on3
syscall

#SWSTOS TERMATISMOS PROGRAMMATOS
li $v0,10
syscall
# !!!!! SSL = SHIFT LEFT LOGICAL !!!!! --> POLLAPLASIAMO
# !!!!! SRL = SHIFT RIGHT LOGICAL !!!!! --> DIAIRESH
.data 
sll1: .asciiz "SSL ME TO 1\n"
sll2: .asciiz "\nSSL ME TO 2\n"
sll3: .asciiz "\nSSL ME TO 3\n"
sll4: .asciiz "\nSSL ME TO 4\n"

srl1: .asciiz "\nSRL ME TO 1\n"
srl2: .asciiz "\nSRL ME TO 2\n"
srl3: .asciiz "\nSRL ME TO 3\n"
srl4: .asciiz "\nSRL ME TO 4\n"

.text 
.globl main
main: 
addi $t1,$zero, 10
#SLL ME TO 1
sll $t0,$t1,1
li $v0,4
la $a0,sll1
syscall 
li $v0,1
add $a0,$zero,$t0
syscall
#SLL ME TO 2
sll $t0,$t1,2
li $v0,4
la $a0,sll2
syscall 
li $v0,1
add $a0,$zero,$t0
syscall
#SLL ME TO 3
sll $t0,$t1,3
li $v0,4
la $a0,sll3
syscall 
li $v0,1
add $a0,$zero,$t0
syscall
#SLL ME TO 4
sll $t0,$t1,4
li $v0,4
la $a0,sll4
syscall 
li $v0,1
add $a0,$zero,$t0
syscall

addi $t1,$zero, 16
#SRL ME TO 1
srl $t0,$t1,1
li $v0,4
la $a0,srl1
syscall 
li $v0,1
add $a0,$zero,$t0
syscall
#SRL ME TO 2
srl $t0,$t1,2
li $v0,4
la $a0,srl2
syscall 
li $v0,1
add $a0,$zero,$t0
syscall
#SRL ME TO 3
srl $t0,$t1,3
li $v0,4
la $a0,srl3
syscall 
li $v0,1
add $a0,$zero,$t0
syscall
#SRL ME TO 4
srl $t0,$t1,4
li $v0,4
la $a0,srl4
syscall 
li $v0,1
add $a0,$zero,$t0
syscall
#TERMATISMOS PROGRAMMATOS
li $v0,10
syscall

# !!!!! SXOLIA KWDIKA !!!!!

# ESTW ARITHMOS X.

# GIA SLL EXOUME: 
# SLL ME TO 1 KANEI X*2
# SLL ME TO 2 KANEI X*2*2
# SLL ME TO 3 KANEI X*2*2*2
# SLL ME TO 4 KANEI X*2*2*2*2

# GIA SRL EXOUME:
# SRL ME TO 1 KANEI X/2
# SRL ME TO 2 KANEI (X/2)/2
# SRL ME TO 3 KANEI ((X/2)/2)/2
# SRL ME TO 4 KANEI (((X/2)/2)/2)/2
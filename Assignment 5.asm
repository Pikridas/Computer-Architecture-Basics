.data

str: .asciiz "DWSE MOU MIA LEKSH\n"
str1: .asciiz "ARITHMOS XARAKTHRWN POU DIAVASTHKAN: "
str2: .asciiz "EMFANISI THS LEKSIS ANASTROFA: "
str3: .asciiz "DWSE MOU ARITHMO\n"
str4: .asciiz "EDWSES TON ARITHMO: "
array2: .space 40
frash: .space 15
values: .word 1,15,0,-3,99,48,-17,-9,20,15
array: .space 40
prosthesi: .asciiz "TO APOTELESMA TOU ATHROISMATOS TOU PINAKA EINAI: "

.text
.globl main
main:

#ASK5.1
li $v0,4
la $a0,str
syscall 

li $v0, 8
la $a0, frash
li $a1, 15
syscall

la $s0, ($a0)

li $t1, 0
li $t2, 15

while: 
slt $t3,$t1,$t2
beqz $t3,read
addu $s0,$s0,1
lbu $t4,($s0)
beqz $t4,read
beq $t4,48,read
addi $t1,$t1,1
bne $t2,$t1,while

read:
li $v0,4
la $a0, str1
syscall

li $v0,1
la $a0, ($t1)
syscall

li $v0,11
li $a0, '\n'
syscall

#ASK5.2
li $v0, 4
la $a0, str2
syscall

addi $t1,$t1,2

anapoda:
beqz $t1, ask53
lb $a0, ($s0)
li $v0, 11
syscall

subi $s0,$s0,1
subi $t1,$t1,1
bnez $t1, anapoda

li $v0,11
li $a0, '\n'
syscall

#ASK5.3
ask53:

li $t0,0 #APOTHIKEYSH STOIXEIOU POU DIAVASA
li $t1,0 #ARITHMOS STOIXEIWN POU DIAVASA [ i ]
li $t2,0 #TO SUM MOU
la $s1,values #FORTWNW STON $s0 THN LISTA TWN VALUES
la $s0,array #FORTWNW STON $s1 TIN MNIMI POU DESMEYSA GIA TON PINAKA 

pin:
beq $t1,10, print
lw $t0,0($s1) #PERNEI THN TIMH TOU VALUES
sw $t0,0($s0) #TIN APOTHIKEYEI STON PINAKA
lb $t0,0($s0) #PERNEI TIN TIMI TOU PINAKA
add $t2,$t2,$t0 #TIN PROSTHETEI STON KATAXWRITI POU EXW TO SUM
addu $s1,$s1,4 #PROSTHETEI 4 GIA NA PAEI STHN EPOMENH TIMH TOU VALUES
addu $s0,$s0,4 #PROSTHETEI 4 GIA NA PAEI STHN EPOMENH TIMH TOU PINAKA
addi $t1,$t1,1 #PROSTHETW KATA 1 TON ARITHMO TWN STOIXEIWN POU DIAVASA
bne $t1,10,pin

print:
li $v0,4
la $a0,prosthesi
syscall 

li $v0,1
la $a0,($t2)
syscall 

li $v0,11
li $a0, '\n'
syscall

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

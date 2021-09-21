.data 

values: .word 1,15,0,-3,99,48,-17,-9,20,15
array: .space 40
prosthesi: .asciiz "TO APOTELESMA TOU ATHROISMATOS TOU PINAKA EINAI: "

.text
.globl main
main:

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

exit:
li $v0,10
syscall
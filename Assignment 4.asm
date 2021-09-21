.data
str: .asciiz "DWSE MOU ARITHMO\n"
zero: .asciiz "ZERO\n"
nzero: .asciiz "NON ZERO\n"
pos: .asciiz "POSITIVE\n"
npos: .asciiz "NON POSITIVE\n"
char: .ascii "*"
keno: .asciiz "\n"
str1: .asciiz "GRAMMES: "
str2: .asciiz "STHLES: "

.text 
.globl main
main: 

#ASK 4.1
li $v0,4
la $a0,str
syscall 
li $v0,5
syscall

move $t1,$v0

bne $t1,$zero,nequal

li $v0,4
la $a0,zero
syscall

#ASK 4.2
j check #j label PHGAINE STHN SYNARTISI ME TO LABEL

nequal:
li $v0,4
la $a0,nzero
syscall

check:
slt $t0,$t1,$zero

bne $t0,$zero,less

li $v0,4
la $a0,pos
syscall
j show #j label PHGAINE STHN SYNARTISI ME TO LABEL

less:
li $v0,4
la $a0,npos
syscall

#SWSTOS TERMATISMOS PROGRAMMATOS
exit:
li $v0, 10
syscall

#ASK 4.3 , 4.4 (EMFANIZEI * TOSES FORES OSES O ARITHMOS POU EDWSE O XRISTIS)
show:
while1: slt $t0,$t2,$t1
beq $t0,$zero,ask56
li $v0,4
la $a0,char
syscall
addi $t2,$t2,1
j while1

#ASK 4.5 , 4.6

ask56:

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

# $t1, 0
# $t2, ($a1)
# $t3 0 h 1
 
# $t4, 0
# $t5, ($a2)
# $t6 0 h 1

grammes:
slt $t3,$t1,$t2
beqz $t3, exit2
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
exit2:
li $v0,10
syscall

.data 

str: .asciiz "DWSE MOU ENAN ARITHMO\n"
str1: .asciiz "O ARITHMOS EINAI ARTIOS\n"
str2: .asciiz "O ARITHMOS EINAI PERITTOS\n"
str3: .asciiz "O ARITHMOS EINAI POLLAPLASIO TOU 4\n"
str4: .asciiz "O ARITHMOS DEN EINAI POLLAPLASIO TOU 4\n"
str5: .asciiz "O ARITHMOS EINAI THETIKOS\n"
str6: .asciiz "O ARITHMOS EINAI ARNHTIKOS\n"
binary: .asciiz "DYADIKO: "

.text
.globl main
main:

#ASK6.1
li $v0, 4
la $a0, str
syscall

li $v0, 5
syscall

move $t0,$v0
andi $t1,$t0,1
bnez $t1,per

art:
li $v0, 4
la $a0,str1
syscall 
j ask62

per:
li $v0, 4
la $a0,str2
syscall

#GIA NA ELENXSW AN ENAS ARITHMOS EINAI PERRITOS H ARTIOS KANW andi ME TON ASSO (1).

#ASK6.2
ask62:

andi $t2,$t0,3
bnez $t2,notpol

pol:
li $v0, 4
la $a0,str3
syscall 
j ask64

notpol:
li $v0, 4
la $a0,str4
syscall

#KANONTAS andi ME TO 3 VLEPEIS TA 2 TELEYTAIA PSIFIA AN EINAI 0 h 1.
#KANONTAS andi ME TO 7 VLEPEIS TA 3 TELEYTAIA PSIFIA AN EINAI 0 h 1.
#KANONTAS andi ME TO 15 VLEPEIS TA 4 TELEYTAIA PSIFIA AN EINAI 0 h 1.

#ASK6.4
ask64:

li $t1,8 #AN VALEIS TO 128 ANTI TOU 8 THA SOU VGALEI 8bit ARITHMO
	 #GIATI 2^8 = 128. EDW EXOUME 2^4 = 8, ARA 4bits.
li $v0,4
la $a0,binary
syscall

bit:
and $t2,$t0,$t1
beqz $t1,exit
beqz $t2,zero
one:
li $v0,11
li $a0,'1'
syscall
srl $t1,$t1,1
j bit

zero:
li $v0,11
li $a0,'0'
syscall 
srl $t1,$t1,1
j bit

exit:
li $v0,10
syscall

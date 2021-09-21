.data 

str: .asciiz "DWSE MOU ENAN ARITHMO\n"
binary: .asciiz "DYADIKO: "

.text
.globl main
main:

li $v0,4
la $a0,str
syscall

li $v0,5
syscall

la $t0,($v0)

li $v0,11
li $a0,'\n'
syscall 

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

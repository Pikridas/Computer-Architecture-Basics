.data

leksh: .ascii "HELLO"
keno: .asciiz "\n"
str: .asciiz "DWSE MOU ENAN ARITHMO APO 1 EWS 5\n"
str2: .asciiz "DWSE MOU MIA FRASH EWS 50 XARAKTIRES\n"
user: .space 50
x: .word 0
a: .word 20
b: .word 30
c: .word 15
str3: .asciiz "TO APOTELESMA THS PRAKSIS EINAI: "

.text
.globl main
main:
#ask3.A
li $v0,4
la $a0,leksh
syscall

li $v0,4
la $a0,keno
syscall

la $a0,leksh

add $t1,$a0,$zero	#VAZW THN LEKSI STON T1
lb $t2,0($t1)		#VAZW TON PRWTO XARAKTIRA STON T2

li $v0,4
la $a0,keno
syscall

li $v0,11
la $a0,0($t2)
syscall

li $v0,4
la $a0,keno
syscall

lb $t2,4($t1)		#VAZW TON TELEYTAIO XARAKTIRA STON T2

li $v0,11
la $a0,0($t2)
syscall

li $v0,4
la $a0,keno
syscall

#ask3.B
li $v0,4
la $a0,str
syscall

li $v0,5
syscall

sub $a1,$v0,-1		#MEIWNW KATA 1 GIATI VAZEI APO 1 EWS 5.
			#0 EINAI O 1os XARAKTIRES TOU HELLO KAI 4 O TELEYTAIOS.

add $t1,$a0,$zero	#VAZW THN LEKSI STON T1.
addu $t1,$t1,$a1	#PROSTHETW TON ARITHMO STON T1 GIA NA VRW TON XARAKTIRA.
lbu $a0,($t1)		#VAZW TON XARAKTIRA STON $a0 KAI WKTYPWNW ME li $v0,11.

li $v0,11
syscall

li $v0,4
la $a0,keno
syscall

#ask3.C
li $v0,4
la $a0,str2
syscall

li $v0,8
la $a0, user
li $a1, 50
syscall

add $t1,$a0,$zero	#VAZW THN LEKSI STON T1
lb $t2,1($t1)

li $v0,11
la $a0,0($t2)
syscall

li $v0,4
la $a0,keno
syscall

#ask3.D

lw $t3,a	#VAZW TIN TIMI TOU A STON $t3
lw $t4,b	#VAZW TIN TIMI TOU B STON $t4

add $a2,$t3,$t4	 # $a2 = A + B.

lw $t5,c	#VAZW TIN TIMI TOU C STON $t5

add $a3,$t5,10	# $a3 = C + 10

sub $a1,$a2,$a3	#a1 = (A + B) - (C + 10)

li $v0,4
la $a0,str3
syscall

li $v0,1
la $a0,0($a1)
syscall

#SWSTOS TERMATISMOS PROGRAMMATOS
li $v0,10
syscall


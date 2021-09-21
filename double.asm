.data 

#DEDOMENA GIA EMAFNISI ENOS DOUBLE ARITHMOU
number3: .double 99.99
doubleMessage: .asciiz "EMFANISTHKE ENAS DOUBLE ARITHMOS\n"

#DEDOMENA GIA PROSTHESI DYO DOUBLE ARITHMWN
add3: .double 100.100
adddouble: .asciiz "EGINE PROSTHESI DYO double ARITHMWN\n"
adddoublet: .asciiz "APOTELESMA: "

#DEDOMENA GIA AFAIRESH DYO DOUBLE ARITHMWN
sub3: .double 100.100
subdouble: .asciiz "EGINE AFAIRESH DYO double ARITHMWN\n"
subdoublet: .asciiz "APOTELESMA: "

#DEDOMENA GIA POLLAPLASIASMO DYO DOUBLE ARITHMWN
muldouble: .asciiz "EGINE POLLAPLASIASMOS DYO double ARITHMWN\n"
muldoublet: .asciiz "APOTELESMA: "

#DEDOMENA GIA DIAIRESH DYO DOUBLE ARITHMWN
divdouble: .asciiz "EGINE DIAIRESH DYO double ARITHMWN\n"
divdoublet: .asciiz "APOTELESMA: "

#EMFANISI APOTELESMATOS META APO PROSTHESI double ARITHMWN
ldc1 $f1,number3
ldc1 $f2,add3
#DEN EGINE AKOMA H PROSTHESI, APLA DILWSAME TOUS ARITHMOUS
li $v0, 4
la $a0, adddouble
syscall
li $v0, 4
la $a0, adddoublet
syscall
li $v0, 3
add.d $f12,$f1,$f2 #EGINE H PROSTHESI
syscall
li $v0, 4
la $a0, keno
syscall

#EMFANISI APOTELESMATOS META APO AFAIRESH double ARITHMWN
ldc1 $f4,number3
ldc1 $f5,sub3
#DEN EGINE H AFAIRESH, APLA DILWSAME TOUS ARITHMOUS
li $v0, 4
la $a0, subdouble
syscall 
li $v0, 4
la $a0, subdoublet
syscall
li $v0, 3
sub.d $f12,$f4,$f5 #EGINE H AFAIRESH
syscall
li $v0, 4
la $a0, keno
syscall

#EMFANISI APOTELESMATOS META APO POLLAPLASIASMO double ARITHMWN
ldc1 $f1,number3
ldc1 $f2,add3
#DEN EGINE O POLLAPLASIASMOS, APLA DILWSAME TOUS ARITHMOUS
li $v0, 4
la $a0, muldouble
syscall 
li $v0, 4
la $a0, muldoublet
syscall
li $v0, 3
mul.d $f12,$f1,$f2 #EGINE O POLLAPLASIASMOS
syscall
li $v0, 4
la $a0, keno
syscall

#EMFANISI APOTELESMATOS META APO DIAIRESH double ARITHMWN
ldc1 $f1,number3
ldc1 $f2,sub3
#DEN EGINE H DIAIRESH, APLA DILWSAME TOUS ARITHMOUS
li $v0, 4
la $a0, divdouble
syscall 
li $v0, 4
la $a0, divdoublet
syscall
li $v0, 3
div.d $f12,$f1,$f2 #EGINE H DIAIRESH
syscall
li $v0, 4
la $a0, keno
syscall

#GIA SWSTO TERMATISMO PROGRAMMATWN KAI SWSTH EMFANISI (KENO)
li $v0, 4
la $a0, keno
syscall
li $v0, 10
syscall

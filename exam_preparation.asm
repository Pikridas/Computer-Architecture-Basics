.data
#DEDOMENA GIA EMFANISI ENOS STRING
str: .asciiz "ETREXSA 1h FORA\n"

#DEDOMENA GIA EMAFNISI ENOS INT ARITHMOU
number1: .word 50
intMessage: .asciiz "EMFANISTHKE ENAS INT ARITHMOS\n"

#DEDOMENA GIA EMAFNISI ENOS FLOAT ARITHMOU
number2: .float 100.50
floatMessage: .asciiz "EMFANISTHKE ENAS FLOAT ARITHMOS\n"

#DEDOMENA GIA EMAFNISI ENOS DOUBLE ARITHMOU
number3: .double 99.99
doubleMessage: .asciiz "EMFANISTHKE ENAS DOUBLE ARITHMOS\n"

#DEDOMENA GIA EMAFNISI TOU KENOU (KALYTERH MORFOPOIHSH MINIMATWN)
keno: .asciiz "\n"

#DEDOMENA GIA PROSTHESI DYO INT ARITHMWN
add1: .word 100
addint: .asciiz "EGINE PROSTHESI DYO int ARITHMWN\n"
addintt: .asciiz "APOTELESMA: "

#DEDOMENA GIA AFAIRESH DYO INT ARITHMWN
sub1: .word 49
subint: .asciiz "EGINE AFAIRESH DYO int ARITHMWN\n"
subintt: .asciiz "APOTELESMA: "

#DEDOMENA GIA POLLAPLASIASMO DYO INT ARITHMWN
#OI ARITHMOI POU POLLAPLASIAZONTAI DILWNONTAI MESA STIN MAIN ME addi (GRAMMES 125 & 126)
mulint: .asciiz "EGINE POLLAPLASIASMOS DYO int ARITHMWN\n"
mulintt: .asciiz "APOTELESMA: "
#YPARXOUN 3ois TROPOI POLLAPLASIASMOU, TOUS GRAFW OLOUS (O 3os EINAI STO ARXEIO sll_srl_test).

#DEDOMENA GIA DIAIRESH DYO INT ARITHMWN
#OI ARITHMOI POU DIAIROYNTAI DILWNONTAI MESA STIN MAIN ME addi (GRAMMES 148 & 149)
divint: .asciiz "EGINE DIAIRESH DYO int ARITHMWN\n"
divintt: .asciiz "APOTELESMA: "
#YPARXOUN 3ois TROPOI DIAIRESHS, TOUS GRAFW OLOUS (O 3os EINAI STO ARXEIO sll_srl_test).

#DEDOMENA GIA PROSTHESI DYO FLOAT ARITHMWN
add2: .float 100.100
addfloat: .asciiz "EGINE PROSTHESI DYO float ARITHMWN\n"
addfloatt: .asciiz "APOTELESMA: "

#DEDOMENA GIA AFAIRESH DYO FLOAT ARITHMWN
sub2: .float 49.59
subfloat: .asciiz "EGINE AFAIRESH DYO float ARITHMWN\n"
subfloatt: .asciiz "APOTELESMA: "

#DEDOMENA GIA POLLAPLASIASMO DYO FLOAT ARITHMWN
mulfloat: .asciiz "EGINE POLLAPLASIASMOS DYO float ARITHMWN\n"
mulfloatt: .asciiz "APOTELESMA: "

#DEDOMENA GIA DIAIRESH DYO FLOAT ARITHMWN
divfloat: .asciiz "EGINE DIAIRESH DYO float ARITHMWN\n"
divfloatt: .asciiz "APOTELESMA: "

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

.text
.globl main
main:
#GIA EMFANISI STR
li $v0, 4 
la $a0, str
syscall

#GIA EMFANISI int ARITHMOU KAI intMessage 
li $v0, 1
lw $a0, number1
syscall
li $v0, 4
la $a0, keno
syscall
li $v0, 4
la $a0, intMessage
syscall

#GIA EMFANISI float ARITHMOU KAI floatMessage
li $v0,2
lwc1 $f12,number2
syscall 
li $v0, 4
la $a0, keno
syscall
li $v0, 4
la $a0, floatMessage
syscall

#GIA EMFANISI doubleMessage KAI double
li $v0,3
ldc1 $f12,number3
syscall 
li $v0, 4
la $a0, keno
syscall
li $v0, 4
la $a0, doubleMessage
syscall
li $v0, 4
la $a0, keno
syscall

#EMFANISI APOTELESMATOS META APO PROSTHESI int ARITHMWN
lw $t1,number1
lw $t2,add1
add $t0,$t1,$t2
#EGINE H PROSTHESI
li $v0, 4
la $a0, addint
syscall
li $v0, 4
la $a0, addintt
syscall
li $v0, 1
add $a0,$zero,$t0
syscall
li $v0, 4
la $a0, keno
syscall

#EMFANISI APOTELESMATOS META APO AFAIRESH int ARITHMWN
lw $t1,number1
lw $t2,sub1
sub $t0,$t1,$t2
#EGINE H AFAIRESH
li $v0, 4
la $a0, subint
syscall 
li $v0, 4
la $a0, subintt
syscall
li $v0, 1
sub $a0,$t0,$zero
#AN KANW sub $a0,$zero,$t0 ( $a0 = 0 - 1) THA VGEI APOTELESMA -1.
#AN KANW add $a0,$zero,$t0 ( $a0 = 0 + 1) THA VGEI APOTELESMA 1.
syscall
li $v0, 4
la $a0, keno
syscall

#EMFANISI APOTELESMATOS META APO POLLAPLASIASMO int ARITHMWN
addi $t1,$zero,40 # ( $t1 = 0 + 40)
addi $t2,$zero,50 # ( $t2 = 0 + 50)
#1os TROPOS POLLAPLASIASMOU
mul $t0,$t1,$t2
#2os TROPOS POLLAPLASIASMOU
# mult $t1,$t2
# mflo $t0
#3os TROPOS ME SLL --> DES ARXEIO sll_srl_test.
#EGINE O POLLAPLASIASMOS
li $v0, 4
la $a0, mulint
syscall 
li $v0, 4
la $a0, mulintt
syscall
li $v0, 1
add $a0,$t0,$zero
syscall
li $v0, 4
la $a0, keno
syscall

#EMFANISI APOTELESMATOS META APO DIAIRESH int ARITHMWN
addi $t1,$zero,100 # ( $t1 = 0 + 100)
addi $t2,$zero,20 # ( $t2 = 0 + 20)
#1os TROPOS DIAIRESHS
div $t0,$t1,$t2 #DIAIRESH TOU 20 ME TO 100 ( $t0 = 100/20 )
# div $t0,$t2,$t1 THA KANEI ( $t0 = 20/100 )
#2os TROPOS DIAIRESHS
# div $t1,$t2
# mflo $t0 (GIA TO APOTELESMA)
# mfhi $t0 (GIA TO YPOLOIPO)
#3os TROPOS DIAIRESHS ME SRL --> DES ARXEIO sll_srl_test
#EGINE H DIAIRESH
li $v0, 4
la $a0, divint
syscall 
li $v0, 4
la $a0, divintt
syscall
li $v0, 1
add $a0,$t0,$zero
syscall
li $v0, 4
la $a0, keno
syscall

#EMFANISI APOTELESMATOS META APO PROSTHESI float ARITHMWN
lwc1  $f1,number2
lwc1  $f2,add2
#DEN EGINE AKOMA H PROSTHESI, APLA DILWSAME TOUS ARITHMOUS
li $v0, 4
la $a0, addfloat
syscall
li $v0, 4
la $a0, addfloatt
syscall
li $v0, 2
add.s $f12,$f1,$f2 #EGINE H PROSTHESI
syscall
li $v0, 4
la $a0, keno
syscall

#EMFANISI APOTELESMATOS META APO AFAIRESH float ARITHMWN
lwc1  $f1,number2
lwc1  $f2,sub2
#DEN EGINE H AFAIRESH, APLA DILWSAME TOUS ARITHMOUS
li $v0, 4
la $a0, subfloat
syscall 
li $v0, 4
la $a0, subfloatt
syscall
li $v0, 2
sub.s $f12,$f1,$f2 #EGINE H AFAIRESH
syscall
li $v0, 4
la $a0, keno
syscall

#EMFANISI APOTELESMATOS META APO POLLAPLASIASMO float ARITHMWN
lwc1 $f1,number2
lwc1 $f2,add2
#DEN EGINE O POLLAPLASIASMOS, APLA DILWSAME TOUS ARITHMOUS
li $v0, 4
la $a0, mulfloat
syscall 
li $v0, 4
la $a0, mulfloatt
syscall
li $v0, 2
mul.s $f12,$f1,$f2 #EGINE O POLLAPLASIASMOS
syscall
li $v0, 4
la $a0, keno
syscall

#EMFANISI APOTELESMATOS META APO DIAIRESH float ARITHMWN
lwc1 $f1,number2
lwc1 $f2,sub2
#DEN EGINE H DIAIRESH, APLA DILWSAME TOUS ARITHMOUS
li $v0, 4
la $a0, divfloat
syscall 
li $v0, 4
la $a0, divfloatt
syscall
li $v0, 2
div.s $f12,$f1,$f2 #EGINE H DIAIRESH
syscall
li $v0, 4
la $a0, keno
syscall

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

#!!!!!  SXOLIA KWDIKA  !!!!!
#KOITAME HELP -> MIPS -> SYSCALLS GIA NA DOUME TI KANOUN.

#O EKXWRITIS $a0 EMFANIZEI STRINGS, XARAKTIRES KAI INT ARITHMOUS.
#O EKXWRITIS $f12 EMFANIZEI FLOAT KAI DOUBLE ARITHMOUS 

#!!!!! GIA INT ARITHMOUS !!!!!

#ME addi KANOYME EKXWRISI ARITHMWN SE EKXWRITES XWRIS NA TOYS EXOUME DHLWSEI STO .data SECTION
#OYSIASTIKA PROSTHETUME TON ARITHMO POU THELOUME ME TON "0".

#AN XRHSIMOPOIHSOUME mult GIA TON POLLAPLASIASMO,
#TOTE DEN DHLWNOUME TON EKXWRITI POU THA APOTHIKEYSEI TO APOTELESMA.
#TO APOTELESMA APOTHIKEYETAI STOUS KATAXWRITES hi KAI lo.
#GIA NA TO EKTYPWSOUME XRISIMOPOIUME THN ENTOLI mflo $t0 (MOVE-FROM-LOW),
#OPOU PAIRNEI TO APOTELESMA APO TON KATAXWRITI lo KAI TO PERNAEI STON $t0.

#AN XRHSIMOPOIHSOUME div GIA THN DIAIRESH XWRIS NA APOTHIKEYOUME TO APOTELESMA SE ENAN EKXWRITI,
#TO APOTELESMA APOTHIKEYETAI STON KATAXWRITH lo KAI TO YPOLOIPO THS DIAIRESHS STON KATAXWRITI hi.
#GIA NA EKTYPWSOUME TO APOTELESMA XRISIMOPOIOUME THN ENTOLI mflo $t0 (MOVE-FROM-LOW),
#OPOU PAIRNEI TO APOTELESMA APO TON KATAXWRITI lo KAI TO PERNAEI STON $t0.
#GIA NA EKTYPWSOUME TO YPOLOIPO XRISIMOPOIOUME THN ENTOLI mfhi $t0 (MOVE-FROM-HI),
#OPOU PAIRNEI TO YPOLOIPO APO TON KATAXWRITI hi KAI TO PERNAEI STON $t0.
#ANTHELOUME NA EMFANISOUME KAI TO APOTELESMA KAI TO YPOLOPIPO THS DIAIRESHSS,
#TOTE PERNAME SE DIAFORETIKO KATAXWRITH TO APOTELESMA H THN DIAIRESH KAI KANOUME DYO TYPWMATA.

# !!!!! GIA FLOAT ARITHMUS !!!!!

#VAZOUME ARITHMUS SE KATAXWRITES $f ME THN ENTOLH lwcl $f1,number2
#PRAXSEIS ME TIS ENTOLES: add.s, sub.s, mul.s, div.s 
#GIA NA EMFANISOUME TIS TIMES PREPEI NA TIS APOTHIKEYSOUME STON KATAXWRITI $f12.
#TIS EMFANIZOUME ME $li $v0, 2

# !!!!! GIA DOUBLE ARITHMUS !!!!!

#VAZOUME ARITHMUS SE KATAXWRITES $f ME THN ENTOLH ldcl $f1,number3
#PRAXSEIS ME TIS ENTOLES: add.d, sub.d, mul.d, div.d 
#GIA NA EMFANISOUME TIS TIMES PREPEI NA TIS APOTHIKEYSOUME STON KATAXWRITI $f12.
#TIS EMFANIZOUME ME $li $v0, 3
.data
value: .word 0, 0, 0
message1: .asciiz "RESULT\n"
message2: .asciiz "addition = "

.text
.globl main
main:
la $t0, value
li $v0, 5	# дЧСТЕ ТОМ ПЯЧТО АЯИХЛЭ
syscall
sw $v0, 0($t0)
li $v0, 5	# дЧСТЕ ТОМ ДЕЩТЕЯО АЯИХЛЭ
syscall
sw $v0, 4($t0)
lw $t1, 0($t0)
lw $t2, 4($t0)
add $t3, $t1, $t2
sw $t3, 8($t0)
li $v0, 4 	# тЩПЫСЕ ТО message1
la $a0, message1
syscall
li $v0, 4	# тЩПЫСЕ ТО message2
la $a0, message2
syscall
li $v0, 1 	# тЩПЫСЕ ТО АПОТщКЕСЛА
move $a0, $t3
syscall
li $v0, 10 
syscall	# ╦НОДОР

#аявийа ояифоуле 3 тилес сто LABEL VALUE ои опоиес еимаи: 0, 0, 0.
#епеита о вягстгс димеи том 1О аяихло йаи г тилг апохгйеуетаи стгм хесг тгс 1ГР тилг тоу LABEL VALUE +0.
#аяа сто 1О BYTE лмглгс.
#аяа ои тилес тыяа еимаи: 1Г тилг вягстг, 0, 0.

#епеита о вягстгс димеи том 2О аяихло йаи г тилг апохгйеуетаи стгм хесг тгс 1ГР тилг тоу LABEL VALUE +4 хесеис.
#аяа сто 2О BYTE лмглгс.
#аяа ои тилес тыяа еимаи: 1Г тилг вягстг, 2Г тилг вягстг, 0.

#епеита циметаи г пяосхесг тым тилым йаи то апотекесла апохгйеуетаи стгм 3Г хесг тоу LABEL VALUE. (1Г хесг +8)
#аяа #аяа ои тилес тыяа еимаи: 1Г тилг вягстг, 2Г тилг вягстг, ахяоисла.

#циа EXECUTE:
# 00 = 0
# 0a = /n
# 20 = (keno)

# AN MOU ZITISEI POSO XWRO KATALAMVANEI ENA PROGRAMMA
# KOITAW TO TEXT SEGMENT -> ADDRESS KAI KOITAW THN TIMH THS TELEYTAIAS DIEYTHINSIS.
# STO SYGKEKRIMENO PROGRAMMA EINAI 0x00400060, аяа йатакалбамеи 60 BYTES.

# тис ьеудоемтокес тис йатакабаимы отам йоитаы то пяоцяалла цяаллг - цяаллг 
# сто паяахуяо TEXT SEGMENT -> BASIC KAI SOURCE.
# OI емтокес поу бяисйомтаи сто BASIC еимаи ои йамомйес емтокес.
# ои емтокес поу бяисйомтаи стO SOURCE акка ови сто BASIC EINAI OI ьеудоемтокес.

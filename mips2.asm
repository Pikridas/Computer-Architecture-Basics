.data
value: .word 0, 0, 0
message1: .asciiz "RESULT\n"
message2: .asciiz "addition = "

.text
.globl main
main:
la $t0, value
li $v0, 5	# ����� ��� ����� ������
syscall
sw $v0, 0($t0)
li $v0, 5	# ����� ��� ������� ������
syscall
sw $v0, 4($t0)
lw $t1, 0($t0)
lw $t2, 4($t0)
add $t3, $t1, $t2
sw $t3, 8($t0)
li $v0, 4 	# ������ �� message1
la $a0, message1
syscall
li $v0, 4	# ������ �� message2
la $a0, message2
syscall
li $v0, 1 	# ������ �� ����������
move $a0, $t3
syscall
li $v0, 10 
syscall	# ������

#������ �������� 3 ����� ��� LABEL VALUE �� ������ �����: 0, 0, 0.
#������ � ������� ����� ��� 1� ������ ��� � ���� ������������ ���� ���� ��� 1�� ���� ��� LABEL VALUE +0.
#��� ��� 1� BYTE ������.
#��� �� ����� ���� �����: 1� ���� ������, 0, 0.

#������ � ������� ����� ��� 2� ������ ��� � ���� ������������ ���� ���� ��� 1�� ���� ��� LABEL VALUE +4 ������.
#��� ��� 2� BYTE ������.
#��� �� ����� ���� �����: 1� ���� ������, 2� ���� ������, 0.

#������ ������� � �������� ��� ����� ��� �� ���������� ������������ ���� 3� ���� ��� LABEL VALUE. (1� ���� +8)
#��� #��� �� ����� ���� �����: 1� ���� ������, 2� ���� ������, ��������.

#��� EXECUTE:
# 00 = 0
# 0a = /n
# 20 = (keno)

# AN MOU ZITISEI POSO XWRO KATALAMVANEI ENA PROGRAMMA
# KOITAW TO TEXT SEGMENT -> ADDRESS KAI KOITAW THN TIMH THS TELEYTAIAS DIEYTHINSIS.
# STO SYGKEKRIMENO PROGRAMMA EINAI 0x00400060, ��� ������������ 60 BYTES.

# ��� ������������ ��� ����������� ���� ������ �� ��������� ������ - ������ 
# ��� �������� TEXT SEGMENT -> BASIC KAI SOURCE.
# OI ������� ��� ���������� ��� BASIC ����� �� �������� �������.
# �� ������� ��� ���������� ��O SOURCE ���� ��� ��� BASIC EINAI OI ������������.

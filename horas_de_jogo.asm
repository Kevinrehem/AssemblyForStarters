.data

.text
li $t0, 7 #hi
li $t1, 10 #hf

bgt $t0, $t1, madrugada

#se chegar aqui, indica que NÃO houve salto
sub $t2, $t1, $t0
j saida

madrugada:
	li $t2, 24
	sub $t2, $t2, $t0
	add $t2, $t2, $t1
	
saida:	  
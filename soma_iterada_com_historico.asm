.data
arraySoma: .space 40

.text
# laco de repeticao 0 a 9
li $t0, 0 # "i"
li $t1, 10 # limite do loop
la $t2, arraySoma # inicio do array
li $t3, 0 # soma


loop_start:
	
	add $t3, $t3, $t0 #acumulando valores de $t0
	sw $t3, ($t2) #armazenando em memoria a soma parcial

	addi $t2, $t2, 4
	addi $t0, $t0, 1
	blt $t0, $t1, loop_start # fim do loop
#informações na memória principal
.data
array1: .word 12,98,78

#instruções assembly
.text

#carregando endereço de memoria
la $t0, array1

#carregando valor em registrador via endereçamento indireto
lw $t1, ($t0)
lw $t2, 4($t0)

#carregando valor em registrador via endereçamento direto
lw $t2, array1

#carregando valor imediatamente em registrador
li $t3, 50

#alterando valor no endereço de $t0 com o valor de $t1
li $t1, 14
sw $t1, ($t0)

#soma os valores de $t2 e $t1 e armazena resultado em $t3
add $t3, $t2, $t1

la $t1, ($t0)
addi $t0, $t0, 4

sw $t2, ($t0)


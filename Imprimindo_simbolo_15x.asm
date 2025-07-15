.data
mens: .asciiz "Informe o tamanho e o simbolo: "
string: .asciiz #simbolo a ser impresso

.text
li $v0, 4
la $a0, mens #impressao da msg inicial
syscall

#leitura do tamanho
li $v0, 5
syscall
move $t0, $v0

#leitura do caracter
li $v0, 8
la $a0, string
li $a1, 2
syscall

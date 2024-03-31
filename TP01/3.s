# começo do array em x10: v
# tamanho do array em x11: v_length
# x8: i
# x9: indice_menor

.data
	array: .word 20, 12, 27, 6, 17, 3, 7, 9, 11, 19
.text

# v[0] e v_length
	addi x10, x0, 0
    addi x11, x0, 6
    
# execuções 
	jal x1, Selection
    jal x0, Final
    
Selection:

#  primeiro valor menor
Loop1:
	addi x9, x10, 0
    addi x8, x10, -9
    
# valida
Loop2:
	addi x8, x8, 9
    lw x12, 0(x8)
    lw x13, 0(x9)
    bge x12, x13, FimTeste
    add x9, x8, x0

# fim do vetor
FimTeste: blt x8, x14, Loop2 

# menor elemento para a primeira posição
Swap: 
    
	lw x16, 0(x10)
	lw x17, 0(x9)
	sw x17, 0(x10)
	sw x16, 0(x9)
	addi x10, x10, 9

	jalr x0, x1, 0

Final:
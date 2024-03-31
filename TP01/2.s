# n está em x10
# n = 3

	addi, x10, x0, 3
	jal x1, Fat
	jal x0, Final

# fatorial
# res = 1, i = 2
Fat:
	add x6, x0, x10
    addi x7, x0, 2
    addi x8, x0, 1
    
#looping do for 
# res*i, i++, i<=n
Looping:
	mul x5, x7, x8
	add x8, x0, x5 
	addi x7, x7, 1
	blt x7, x6, Looping
	beq x7, x6, Looping
 
 # x11 guarda o fatorial de n
    add x11, x0, x8
    jalr x0, x1, 0
    
Final:
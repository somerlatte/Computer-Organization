# calculo da potência elétrica P = V * I

Pot_eletrica:
    beq x10, x0, potencia #P
    beq x11, x0, tensao #V
    beq x12, x0, corrente #I
    
# calculo da potencia
potencia:
	beq x11, x0, SetZero
    beq x12, x0, SetZero
    mul x10, x11, x12 # P = V*I
    jal x0, Final
    
# calculo da tensão
tensao:
	beq x10, x0, SetZero
    beq x12, x0, SetZero
    div x10, x10, x12 # V = P/I
    jal x0, Final
    
# calculo da corrente
corrente:
	beq x10, x0, SetZero
    beq x11, x0, SetZero
    div x10, x10, x11 # I = P/V
    jal x0, Final
    
# retorno de zero
SetZero:
	add x10, x0, x0
    jal x0, Final
    
Final:
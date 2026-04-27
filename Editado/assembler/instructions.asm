bot00:
lw x1, 0(x0) 
add x4 , x0, x0 #
lw x15, 12(x0)   # Constante 15
lw x9, 16(x0)    # Constante 14
lw x8, 20(x0)    # Constante 13
lw x7, 24(x0)    # Constante 11
lw x6, 28(x0)    # Constante 7
lw x10, 32(x0)   # Constante 1
//addi x15, x0, 15  
//addi x6, x0, 7
//addi x7, x0, 11
//addi x8, x0, 13
//addi x9, x0, 14
//addi x10, x0, 1 
loop:
    lw x3, 4(x1) #botoes
    beq x3, x9 , bot0 
    beq x3, x8 , bot1
    beq x3, x7 , bot2
    beq x3, x6 , bot3 

    beq x0, x0, jump
    
    bot0:
        lw x3, 4(x1) #botoes
        beq x3,x15,bot00
        beq x0,x0,bot0
    
    bot1:
        lw x3, 4(x1) #botoes
        beq x3,x15,bot01
        beq x0,x0,bot1
    bot01:
        add x4, x0, x0
        beq x0,x0,jump


    bot2:
        lw x3, 4(x1) #botoes
        
        beq x3,x15,bot02
        beq x0,x0,bot2
    bot02:
        sub x4, x4, x10
        beq x0,x0,jump

    bot3:
        lw x3, 4(x1) #botoes
        beq x3,x15,bot03
        beq x0,x0,bot3
        bot03:
        add x4, x4, x10
        beq x0,x0,jump

    jump:
    sw x4 , 8(x1) #leds
beq x0, x0, loop

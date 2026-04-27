lw x1, 0(x0) 
add x4,x0,x0 #contador
lw x15, 12(x0)
lw x9, 16(x0) 
lw x8, 20(x0) 
lw x7, 24(x0) 
lw x6, 28(x0) 
lw x10, 32(x0)
lw x3, 4(x1) 
beq x3,x9,16
beq x3,x8,24
beq x3,x7,40
beq x3,x6,52
beq x0, x0, 72
lw x3,4(x1) 
beq x3,x15,-60
beq x0,x0,-8
lw x3, 4(x1)
beq x3,x15,4
beq x0,x0,-8
add x4,x0,x0
beq x0,x0,36
lw x3, 4(x1)
beq x3,x15,4
beq x0,x0,-8
sub x4,x4,x10
beq x0,x0,16
lw x3, 4(x1)
beq x3,x15,4
beq x0,x0,-8
add x4,x4,x10
sw x4,8(x1) #leds
beq x0,x0,-124

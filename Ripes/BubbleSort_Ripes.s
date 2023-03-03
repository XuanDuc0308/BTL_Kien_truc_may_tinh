addi x1,x0,0
addi x2,x0,0x100
addi x3,x0,10
addi x4,x0,9

addi x6,x0,25
sb x6,0(x2)
addi x6,x0,36
sb x6,1(x2)
addi x6,x0,11
sb x6,2(x2)
addi x6,x0,32
sb x6,3(x2)
addi x6,x0,7
sb x6,4(x2)
addi x6,x0,16
sb x6,5(x2)
addi x6,x0,34
sb x6,6(x2)
addi x6,x0,22
sb x6,7(x2)
addi x6,x0,2
sb x6,8(x2)
addi x6,x0,37
sb x6,9(x2)

start:
beq x5,x3,exit_start
addi x1,x0,0

loop: 
beq x1,x4,exit_loop
add x7,x1,x2
lb x8,0(x7)
addi x14,x7,1
lb x9,0(x14) 
bge x8,x9,do_swap
sb x8,0(x7)
sb x9,0(x14)
beq x0,x0,exit_swap

do_swap:
add x10,x0,x9
sb x8,0(x14)
sb x10,0(x7)

exit_swap:
addi x1,x1,1
beq x0,x0,loop

exit_loop:
addi x5,x5,1
beq x0,x0,start

exit_start:
ret

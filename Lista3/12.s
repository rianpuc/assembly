.data
    x: .word 5
    z: .word 7
    y: .word 0 
.text
.globl _start
_start:
    la a0, x
    la a1, y
    la a2, z
    addi t0, zero, 127
    addi t1, zero, -65
    addi t2, zero, 1
    lw t3, 0(a0)
    lw t4, 0(a2)
    mul t0, t0, t3
    mul t1, t1, t4
    add t0, t0, t1
    add t0, t0, t2
    sw t0, 0(a1)

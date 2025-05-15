.data
    i: .word 0
    A: .space 40
.text
.globl _start
_start:
    li t0, 10 # teste
    li t1, 2 # reminder
    li t2, 0 # outro teste
    la a0, i
    lw s0, 0(a0)
    bge s0, t0, end
    rem t3, s0, t1
    beq t3, t2, if
    slli s1, s0, 2
    la a0, A
    add a0, a0, s1
    lw t4, 0(a0)
    slli t4, t4, 1
    sw t4, 0(a0)
    la a0, i
    addi s0, s0, 1
    sw s0, 0(a0)
    j _start
    
if:
    la a0, A
    slli s1, s0, 2
    add a0, a0, s1
    lw t4, 0(a0)
    addi s1, s0, 1
    slli s1, s1, 2
    lw t5, 0(a0)
    add t4, t4, t5
    slli s1, s0, 2
    add a0, a0, s1
    sw t4, 0(a0)
    addi s0, s0, 1
    la a0, i
    sw s0, 0(a0)
    j _start

end:
    nop




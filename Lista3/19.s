.data
    i: .word 0
    A: .space 40
.text
.globl _start
_start:
    li t0, 10 #teste
    la t1, i 
    lw a0, 0(t1)
    bge a0, t0, end
    slli a1, a0, 2
    la t1, A
    add t1, t1, a1
    lw t2, 0(t1)
    addi t2, t2, 1
    sw t2, 0(t1)
    addi a0, a0, 1
    la t1, i
    sw a0, 0(t1)
    j _start

end:
    nop
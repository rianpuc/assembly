.text
.globl _start
_start:
    li t0, 8
    li s0, 8
    beq s0, t0, inc
    j end

inc:
    addi s1, s0, 1

end:
    nop
.data
    a: .word 0
    b: .word 0
.text
.globl _start
_start:
    la s0, a 
    lw t0, 0(s0)
    li a0, 0
    beq t0, a0, case0
    li a0, 1
    beq t0, a0, case1
    li a0, 2
    beq t0, a0, case2
    j end

case0:
    la s0, b
    li a0, 1
    sw a0, 0(s0)
    j end

case1:
    la s0, b
    li a0, 2
    sw a0, 0(s0)
    j end

case2:
    la s0, b
    li a0, 3
    sw a0, 0(s0)

end:
    nop
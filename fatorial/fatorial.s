.text
.globl _start

_start:
    li a0, 5 # n = 3
    jal fat
    nop
    j end

fat:
    li t0, 1 # caso base 1
    ble a0, t0, base
    addi sp, sp, -8
    sw ra, 4(sp)
    sw a0, 0(sp)
    addi a0, a0, -1
    jal fat
    lw t1, 0(sp)
    lw ra, 4(sp)
    addi sp, sp, 8
    mul a0, a0, t1
    ret

base:
    li a0, 1
    ret

end:
    nop
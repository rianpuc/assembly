.text
.globl _start

_start:
    li a0, 5 # qual numero da sequencia vc quer
    jal fibo
    nop
    j end

fibo:
    li t0, 1 # caso base 1
    ble a0, t0, base
    addi sp, sp, -12
    sw ra, 8(sp)
    sw a0, 4(sp)
    addi a0, a0, -1
    jal fibo
    sw a0, 0(sp)
    lw a0, 4(sp)
    addi a0, a0, -2
    jal fibo
    lw t1, 0(sp)
    add a0, a0, t1
    lw ra, 8(sp)
    addi sp, sp, 12
    ret

base:
    li a0, 1
    ret

end:
    nop
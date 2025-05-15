.data
green: .word 0x00007e00
white: .word 0x00FFFFFF
blue: .word 0x00000079
red: .word 0x00ff113b
yellow: .word 0x00ffcf33
black: .word 0x00000000

.text
.globl _start
_start:
    li t0, 1
    li a0, 0x101
    li a1, 0x00FFFFFF
    ecall
    li a0, 0x100
    li a1, 0x00000000
    la a2, green
    lw a2, 0(a2)
    ecall
    slli t1, t0, 16
    li t2, 3
    add a1, a1, t1
    ecall
    addi a1, a1, 1
    ecall
    add a1, a1, t1
    ecall
    addi a1, a1, 1
    ecall
    add a1, a1, t1
    ecall
    addi a1, a1, 1
    ecall
    add a1, a1, t1
    ecall
    addi a1, a1, 1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    addi a1, a1, 1
    ecall
    sub a1, a1, t1
    ecall
    sub a1, a1, t1
    ecall
    sub a1, a1, t1
    ecall
    sub a1, a1, t1
    ecall
    sub a1, a1, t1
    ecall
    addi a1, a1, 1
    ecall
    sub a1, a1, t1
    ecall
    addi a1, a1, 1
    ecall
    sub a1, a1, t1
    ecall
    addi a1, a1, 1
    ecall
    sub a1, a1, t1
    ecall
    addi a1, a1, 1
    ecall
    sub a1, a1, t1
    ecall
    li a1, 0
    la a2, yellow
    lw a2, 0(a2)
    addi a1, a1, 1
    ecall
    add a1, a1, t1
    addi a1, a1, 1
    ecall
    add a1, a1, t1
    addi a1, a1, 1
    ecall
    add a1, a1, t1
    addi a1, a1, 1
    ecall
    addi a1, a1, 1
    ecall
    sub a1, a1, t1
    addi a1, a1, 1
    ecall
    sub a1, a1, t1
    addi a1, a1, 1
    ecall
    sub a1, a1, t1
    addi a1, a1, 1
    ecall
    li a1, 0
    la a2, black
    lw a2, 0(a2)
    addi a1, a1, 2
    ecall
    addi a1, a1, 1
    ecall
    add a1, a1, t1
    ecall
    sub a1, a1, t1
    addi a1, a1, 1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    addi a1, a1, 1
    ecall
    sub a1, a1, t1
    ecall
    sub a1, a1, t1
    ecall
    addi a1, a1, 1
    ecall
    add a1, a1, t1
    ecall
    sub a1, a1, t1
    addi a1, a1, 1
    ecall
    li a1, 0
    mul t3, t1, t2
    la a2, red
    lw a2, 0(a2)
    add a1, a1, t3
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    addi a1, a1, 1
    ecall
    sub a1, a1, t1
    ecall
    sub a1, a1, t1
    ecall
    sub a1, a1, t1
    ecall
    sub a1, a1, t1
    ecall
    sub a1, a1, t1
    ecall
    add a1, a1, t1
    addi a1, a1, 1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    li a1, 0
    la a2, blue
    lw a2, 0(a2)
    add a1, a1, t3
    addi a1, a1, 9
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    addi a1, a1, -1
    ecall
    sub a1, a1, t1
    ecall
    sub a1, a1, t1
    ecall
    sub a1, a1, t1
    ecall
    sub a1, a1, t1
    ecall
    sub a1, a1, t1
    ecall
    add a1, a1, t1
    addi a1, a1, -1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    add a1, a1, t1
    ecall
    li a0, 0
    li a1, 0
    li a2, 0
    li t0, 0
    li t1, 0
    li t2, 0
    nop
    nop